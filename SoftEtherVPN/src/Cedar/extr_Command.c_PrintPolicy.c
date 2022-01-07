
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int value_str ;
typedef int tmp2 ;
typedef int name ;
typedef scalar_t__ UINT ;
typedef int POLICY ;
typedef int PACK ;
typedef int CT ;
typedef int CONSOLE ;


 int * CopyStrToUni (scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int ,int *) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 int Format (char*,int,char*,scalar_t__) ;
 int FormatPolicyValue (int *,int,scalar_t__,scalar_t__) ;
 int Free (int *) ;
 int FreePack (int *) ;
 int * NewPack () ;
 int OutRpcPolicy (int *,int *) ;
 scalar_t__ PackGetInt (int *,char*) ;
 scalar_t__ PolicyIdToStr (scalar_t__) ;
 scalar_t__ PolicyIsSupportedForCascade (scalar_t__) ;
 scalar_t__ PolicyNum () ;
 int _UU (char*) ;

void PrintPolicy(CONSOLE *c, POLICY *pol, bool cascade_mode)
{
 UINT i;
 CT *ct;
 PACK *p;

 if (c == ((void*)0) || pol == ((void*)0))
 {
  return;
 }

 ct = CtNew();
 CtInsertColumn(ct, _UU("CMD_PolicyList_Column_1"), 0);
 CtInsertColumn(ct, _UU("CMD_PolicyList_Column_2"), 0);
 CtInsertColumn(ct, _UU("CMD_PolicyList_Column_3"), 0);

 p = NewPack();
 OutRpcPolicy(p, pol);


 for (i = 0; i < PolicyNum();i++)
 {
  char name[64];
  wchar_t *tmp;

  if (cascade_mode == 0 || PolicyIsSupportedForCascade(i))
  {
   wchar_t value_str[256];
   UINT value;
   char tmp2[256];

   Format(tmp2, sizeof(tmp2), "policy:%s", PolicyIdToStr(i));
   value = PackGetInt(p, tmp2);

   tmp = CopyStrToUni(PolicyIdToStr(i));

   FormatPolicyValue(value_str, sizeof(value_str),
    i, value);

   Format(name, sizeof(name), "POL_%u", i);
   CtInsert(ct, tmp, _UU(name), value_str);

   Free(tmp);
  }
 }

 FreePack(p);

 CtFree(ct, c);
}
