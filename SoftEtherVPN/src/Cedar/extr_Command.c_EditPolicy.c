
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp2 ;
typedef int tmp ;
typedef int pack_name ;
typedef scalar_t__ UINT ;
struct TYPE_14__ {int (* Write ) (TYPE_4__*,int *) ;} ;
struct TYPE_13__ {TYPE_1__** values; } ;
struct TYPE_12__ {int TypeInt; int AllowZero; scalar_t__ MinValue; scalar_t__ MaxValue; } ;
struct TYPE_11__ {int IntValue; } ;
typedef TYPE_2__ POLICY_ITEM ;
typedef int POLICY ;
typedef int PACK ;
typedef TYPE_3__ ELEMENT ;
typedef TYPE_4__ CONSOLE ;


 int Format (char*,int,char*,int ) ;
 int FreePack (int *) ;
 TYPE_3__* GetElement (int *,char*,int ) ;
 TYPE_2__* GetPolicyItem (scalar_t__) ;
 int GetPolicyValueRangeStr (int *,int,scalar_t__) ;
 scalar_t__ INFINITE ;
 int InRpcPolicy (int *,int *) ;
 int MAX_SIZE ;
 int * NewPack () ;
 int OutRpcPolicy (int *,int *) ;
 int PolicyIdToStr (scalar_t__) ;
 int PolicyIsSupportedForCascade (scalar_t__) ;
 scalar_t__ PolicyStrToId (char*) ;
 scalar_t__ StartWith (char*,char*) ;
 scalar_t__ ToInt (char*) ;
 int UniFormat (int *,int,int ,char*,...) ;
 int VALUE_INT ;
 int Zero (int *,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int *) ;
 int stub2 (TYPE_4__*,int *) ;
 int stub3 (TYPE_4__*,int *) ;

bool EditPolicy(CONSOLE *c, POLICY *pol, char *name, char *value, bool cascade_mode)
{
 PACK *p;
 ELEMENT *e;
 POLICY_ITEM *item;
 UINT id;
 wchar_t tmp[MAX_SIZE];
 wchar_t tmp2[MAX_SIZE];
 char pack_name[128];

 if (c == ((void*)0) || pol == ((void*)0) || name == ((void*)0) || value == ((void*)0))
 {
  return 0;
 }

 p = NewPack();

 OutRpcPolicy(p, pol);

 Format(pack_name, sizeof(pack_name), "policy:%s", PolicyIdToStr(PolicyStrToId(name)));

 if ((e = GetElement(p, pack_name, VALUE_INT)) == ((void*)0) || (id = PolicyStrToId(name)) == INFINITE)
 {
  UniFormat(tmp, sizeof(tmp), _UU("CMD_CascadePolicySet_Invalid_Name"), name);
  c->Write(c, tmp);
  FreePack(p);
  return 0;
 }

 if (cascade_mode && (PolicyIsSupportedForCascade(id) == 0))
 {
  UniFormat(tmp, sizeof(tmp), _UU("CMD_CascadePolicySet_Invalid_Name_For_Cascade"), name);
  c->Write(c, tmp);
  FreePack(p);
  return 0;
 }

 item = GetPolicyItem(id);

 if (item->TypeInt == 0)
 {

  e->values[0]->IntValue = (
   StartWith(value, "y") || StartWith(value, "t") ||
   ToInt(value) != 0) ? 1 : 0;
 }
 else
 {
  UINT n = ToInt(value);
  bool b = 1;


  GetPolicyValueRangeStr(tmp, sizeof(tmp), id);

  if (item->AllowZero == 0)
  {
   if (n == 0)
   {
    b = 0;
   }
  }

  if (n != 0 && (n < item->MinValue || n > item->MaxValue))
  {
   b = 0;
  }

  if (b == 0)
  {
   UniFormat(tmp2, sizeof(tmp2), _UU("CMD_CascadePolicySet_Invalid_Range"), PolicyIdToStr(id), tmp);
   c->Write(c, tmp2);
   FreePack(p);
   return 0;
  }

  e->values[0]->IntValue = n;
 }

 Zero(pol, sizeof(POLICY));

 InRpcPolicy(pol, p);

 FreePack(p);

 return 1;
}
