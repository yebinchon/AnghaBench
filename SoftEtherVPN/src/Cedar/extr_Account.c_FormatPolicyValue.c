
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UINT ;
struct TYPE_3__ {int TypeInt; char* FormatStr; scalar_t__ AllowZero; } ;
typedef TYPE_1__ POLICY_ITEM ;


 TYPE_1__* GetPolicyItem (int ) ;
 int UniFormat (int *,int ,char*,int ) ;
 int UniStrCpy (int *,int ,char*) ;
 char* _UU (char*) ;

void FormatPolicyValue(wchar_t *str, UINT size, UINT id, UINT value)
{
 POLICY_ITEM *p;

 if (str == ((void*)0))
 {
  return;
 }

 p = GetPolicyItem(id);

 if (p->TypeInt == 0)
 {

  if (value == 0)
  {
   UniStrCpy(str, size, L"No");
  }
  else
  {
   UniStrCpy(str, size, L"Yes");
  }
 }
 else
 {

  if (value == 0 && p->AllowZero)
  {
   UniStrCpy(str, size, _UU("CMD_NO_SETTINGS"));
  }
  else
  {
   UniFormat(str, size, _UU(p->FormatStr), value);
  }
 }
}
