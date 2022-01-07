
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char wchar_t ;
typedef int UINT ;
struct TYPE_2__ {int OsType; } ;
typedef int HINSTANCE ;


 char* CopyStrToUni (char*) ;
 char* CopyUniStr (char*) ;
 int Free (char*) ;
 TYPE_1__* GetOsInfo () ;
 scalar_t__ LoadStringW (int ,int,char*,int) ;
 char* Malloc (int) ;
 scalar_t__ OS_IS_WINDOWS_9X (int ) ;
 char* ViLoadStringA (int ,int) ;

wchar_t *ViLoadString(HINSTANCE hInst, UINT id)
{
 wchar_t *ret = ((void*)0);

 if (OS_IS_WINDOWS_9X(GetOsInfo()->OsType))
 {
  char *a = ViLoadStringA(hInst, id);
  if (a != ((void*)0))
  {
   ret = CopyStrToUni(a);
   Free(a);
  }
 }
 else
 {
  UINT tmp_size = 60000;
  wchar_t *tmp = Malloc(tmp_size);

  if (LoadStringW(hInst, id, tmp, tmp_size) != 0)
  {
   ret = CopyUniStr(tmp);
  }

  Free(tmp);
 }

 return ret;
}
