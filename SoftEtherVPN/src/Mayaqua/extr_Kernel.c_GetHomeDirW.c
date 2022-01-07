
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int hpath ;
typedef int drive ;
typedef int UINT ;


 int GetEnvW (char*,int *,int) ;
 int MAX_SIZE ;
 int UniFormat (int *,int,char*,int *,int *) ;
 int UnixGetCurrentDirW (int *,int) ;
 int Win32GetCurrentDirW (int *,int) ;

void GetHomeDirW(wchar_t *path, UINT size)
{

 if (path == ((void*)0))
 {
  return;
 }

 if (GetEnvW(L"HOME", path, size) == 0)
 {
  wchar_t drive[MAX_SIZE];
  wchar_t hpath[MAX_SIZE];
  if (GetEnvW(L"HOMEDRIVE", drive, sizeof(drive)) &&
   GetEnvW(L"HOMEPATH", hpath, sizeof(hpath)))
  {
   UniFormat(path, size, L"%s%s", drive, hpath);
  }
  else
  {



   UnixGetCurrentDirW(path, size);

  }
 }
}
