
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef size_t UINT ;


 int MAX_SIZE ;
 int NormalizePathW (int*,size_t,int*) ;
 scalar_t__ UniEndWith (int*,char*) ;
 int UniStrCat (int*,size_t,int*) ;
 int UniStrCpy (int*,size_t,...) ;
 int UniStrLen (int*) ;

void GetDirNameFromFilePathW(wchar_t *dst, UINT size, wchar_t *filepath)
{
 wchar_t tmp[MAX_SIZE];
 UINT wp;
 UINT i;
 UINT len;

 if (dst == ((void*)0) || filepath == ((void*)0))
 {
  return;
 }

 UniStrCpy(tmp, sizeof(tmp), filepath);
 if (UniEndWith(tmp, L"\\") || UniEndWith(tmp, L"/"))
 {
  tmp[UniStrLen(tmp) - 1] = 0;
 }

 len = UniStrLen(tmp);

 UniStrCpy(dst, size, L"");

 wp = 0;

 for (i = 0;i < len;i++)
 {
  wchar_t c = tmp[i];
  if (c == L'/' || c == L'\\')
  {
   tmp[wp++] = 0;
   wp = 0;
   UniStrCat(dst, size, tmp);
   tmp[wp++] = c;
  }
  else
  {
   tmp[wp++] = c;
  }
 }

 if (UniStrLen(dst) == 0)
 {
  UniStrCpy(dst, size, L"/");
 }

 NormalizePathW(dst, size, dst);
}
