
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int filename_ident ;
typedef int UINT ;


 int MAX_SIZE ;
 int NormalizePathW (int*,int,int*) ;
 int UniEndWith (int*,char*) ;
 scalar_t__ UniStartWith (int*,char*) ;
 int UniStrCat (int*,int,...) ;
 int UniStrCpy (int*,int,int*) ;
 int UniStrLen (int*) ;

void ConbinePathW(wchar_t *dst, UINT size, wchar_t *dirname, wchar_t *filename)
{
 bool is_full_path;
 wchar_t tmp[MAX_SIZE];
 wchar_t filename_ident[MAX_SIZE];

 if (dst == ((void*)0) || dirname == ((void*)0) || filename == ((void*)0))
 {
  return;
 }

 NormalizePathW(filename_ident, sizeof(filename_ident), filename);

 is_full_path = 0;

 if (UniStartWith(filename_ident, L"\\") || UniStartWith(filename_ident, L"/"))
 {
  is_full_path = 1;
 }

 filename = &filename_ident[0];
 if (is_full_path == 0)
 {
  UniStrCpy(tmp, sizeof(tmp), dirname);
  if (UniEndWith(tmp, L"/") == 0 && UniEndWith(tmp, L"\\") == 0)
  {
   UniStrCat(tmp, sizeof(tmp), L"/");
  }
  UniStrCat(tmp, sizeof(tmp), filename);
 }
 else
 {
  UniStrCpy(tmp, sizeof(tmp), filename);
 }

 NormalizePathW(dst, size, tmp);
}
