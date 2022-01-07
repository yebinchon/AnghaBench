
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_19__ ;


typedef char wchar_t ;
typedef int tmp2 ;
typedef int tmp ;
typedef int policy_name ;
typedef int name2 ;
typedef int name1 ;
typedef int name ;
typedef scalar_t__ UINT ;
struct TYPE_22__ {int (* Write ) (TYPE_1__*,char*) ;} ;
struct TYPE_21__ {int DefaultValue; } ;
typedef int CT ;
typedef TYPE_1__ CONSOLE ;


 char* CopyStrToUni (int ) ;
 int CtFree (int *,TYPE_1__*) ;
 int CtInsert (int *,char*,char*) ;
 int CtInsertColumn (int *,char*,int) ;
 int * CtNew () ;
 int Format (char*,int,char*,scalar_t__) ;
 int FormatPolicyValue (char*,int,scalar_t__,int ) ;
 int Free (char*) ;
 TYPE_19__* GetPolicyItem (scalar_t__) ;
 int GetPolicyValueRangeStr (char*,int,scalar_t__) ;
 scalar_t__ INFINITE ;
 scalar_t__ IsEmptyStr (char*) ;
 int MAX_SIZE ;
 int PolicyIdToStr (scalar_t__) ;
 scalar_t__ PolicyNum () ;
 scalar_t__ PolicyStrToId (char*) ;
 int StrToUni (char*,int,int ) ;
 int UniFormat (char*,int,char*,char*) ;
 char* _UU (char*) ;
 int stub1 (TYPE_1__*,char*) ;
 int stub10 (TYPE_1__*,char*) ;
 int stub11 (TYPE_1__*,char*) ;
 int stub12 (TYPE_1__*,char*) ;
 int stub13 (TYPE_1__*,char*) ;
 int stub14 (TYPE_1__*,char*) ;
 int stub15 (TYPE_1__*,char*) ;
 int stub16 (TYPE_1__*,char*) ;
 int stub2 (TYPE_1__*,char*) ;
 int stub3 (TYPE_1__*,char*) ;
 int stub4 (TYPE_1__*,char*) ;
 int stub5 (TYPE_1__*,char*) ;
 int stub6 (TYPE_1__*,char*) ;
 int stub7 (TYPE_1__*,char*) ;
 int stub8 (TYPE_1__*,char*) ;
 int stub9 (TYPE_1__*,char*) ;

void PrintPolicyList(CONSOLE *c, char *name)
{
 UINT id;

 if (c == ((void*)0))
 {
  return;
 }
 if (IsEmptyStr(name))
 {
  name = ((void*)0);
 }

 if (name != ((void*)0))
 {
  id = PolicyStrToId(name);
  if (id == INFINITE)
  {

   c->Write(c, _UU("CMD_PolicyList_Invalid_Name"));
  }
  else
  {
   wchar_t tmp[MAX_SIZE];
   wchar_t tmp2[MAX_SIZE];
   char name1[64], name2[64];
   wchar_t *title, *descript;
   wchar_t policy_name[MAX_SIZE];

   Format(name1, sizeof(name1), "POL_%u", id);
   Format(name2, sizeof(name2), "POL_EX_%u", id);

   title = _UU(name1);
   descript = _UU(name2);

   StrToUni(policy_name, sizeof(policy_name), PolicyIdToStr(id));


   c->Write(c, _UU("CMD_PolicyList_Help_1"));
   UniFormat(tmp2, sizeof(tmp2), L" %s", policy_name);
   c->Write(c, tmp2);
   c->Write(c, L"");


   c->Write(c, _UU("CMD_PolicyList_Help_2"));
   UniFormat(tmp2, sizeof(tmp2), L" %s", title);
   c->Write(c, tmp2);
   c->Write(c, L"");


   GetPolicyValueRangeStr(tmp, sizeof(tmp), id);
   c->Write(c, _UU("CMD_PolicyList_Help_3"));
   UniFormat(tmp2, sizeof(tmp2), L" %s", tmp);
   c->Write(c, tmp2);
   c->Write(c, L"");


   FormatPolicyValue(tmp, sizeof(tmp), id, GetPolicyItem(id)->DefaultValue);
   c->Write(c, _UU("CMD_PolicyList_Help_4"));
   UniFormat(tmp2, sizeof(tmp2), L" %s", tmp);
   c->Write(c, tmp2);
   c->Write(c, L"");


   c->Write(c, _UU("CMD_PolicyList_Help_5"));
   c->Write(c, descript);
   c->Write(c, L"");
  }
 }
 else
 {
  UINT i;
  CT *ct = CtNew();
  CtInsertColumn(ct, _UU("CMD_PolicyList_Column_1"), 0);
  CtInsertColumn(ct, _UU("CMD_PolicyList_Column_2"), 0);


  for (i = 0; i < PolicyNum();i++)
  {
   char name[64];
   wchar_t *tmp;

   tmp = CopyStrToUni(PolicyIdToStr(i));

   Format(name, sizeof(name), "POL_%u", i);
   CtInsert(ct, tmp, _UU(name));

   Free(tmp);
  }

  CtFree(ct, c);
 }
}
