
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int tmp2 ;
typedef int tmp ;
typedef scalar_t__ UINT ;
typedef int LIST ;


 int Add (int *,char*) ;
 char* CopyUniStr (char*) ;
 int GetDirNameFromFilePathW (char*,int,char*) ;
 char* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int MAX_PATH ;
 int MakeDirW (char*) ;
 int * NewListFast (int *) ;
 int UniFreeStrList (int *) ;
 scalar_t__ UniStrCmpi (char*,char*) ;
 int UniStrCpy (char*,int,char*) ;

bool MakeDirExW(wchar_t *name)
{
 LIST *o;
 wchar_t tmp[MAX_PATH];
 wchar_t tmp2[MAX_PATH];
 UINT i;
 bool ret = 0;

 if (name == ((void*)0))
 {
  return 0;
 }

 o = NewListFast(((void*)0));

 UniStrCpy(tmp, sizeof(tmp), name);
 while (1)
 {
  wchar_t *s = CopyUniStr(tmp);

  Add(o, s);

  GetDirNameFromFilePathW(tmp2, sizeof(tmp2), tmp);

  if (UniStrCmpi(tmp2, tmp) == 0)
  {
   break;
  }

  UniStrCpy(tmp, sizeof(tmp), tmp2);
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  UINT j = LIST_NUM(o) - i - 1;
  wchar_t *s = LIST_DATA(o, j);

  if (UniStrCmpi(s, L"\\") != 0 && UniStrCmpi(s, L"/") != 0)
  {
   ret = MakeDirW(s);
  }
 }

 UniFreeStrList(o);

 return ret;
}
