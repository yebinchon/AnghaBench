
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int Copy (int*,int*,int) ;
 int UniStrLen (int*) ;
 int wcscpy (int*,char*) ;

UINT UniStrCpy(wchar_t *dst, UINT size, wchar_t *src)
{
 UINT len;

 if (dst == ((void*)0) || src == ((void*)0))
 {
  if (src == ((void*)0) && dst != ((void*)0))
  {
   if (size >= sizeof(wchar_t))
   {
    dst[0] = L'\0';
   }
  }
  return 0;
 }
 if (dst == src)
 {
  return UniStrLen(src);
 }
 if (size != 0 && size < sizeof(wchar_t))
 {
  return 0;
 }
 if (size == sizeof(wchar_t))
 {
  wcscpy(dst, L"");
  return 0;
 }
 if (size == 0)
 {

  size = 0x3fffffff;
 }


 len = UniStrLen(src);
 if (len <= (size / sizeof(wchar_t) - 1))
 {
  Copy(dst, src, (len + 1) * sizeof(wchar_t));
 }
 else
 {
  len = size / sizeof(wchar_t) - 1;
  Copy(dst, src, len * sizeof(wchar_t));
  dst[len] = 0;
 }

 return len;
}
