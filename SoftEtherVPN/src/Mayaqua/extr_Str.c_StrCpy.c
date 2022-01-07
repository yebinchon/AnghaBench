
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int Copy (char*,char*,int) ;
 int KS_INC (int ) ;
 int KS_STRCPY_COUNT ;
 int StrLen (char*) ;

UINT StrCpy(char *dst, UINT size, char *src)
{
 UINT len;

 if (dst == src)
 {
  return StrLen(src);
 }
 if (dst == ((void*)0) || src == ((void*)0))
 {
  if (src == ((void*)0) && dst != ((void*)0))
  {
   if (size >= 1)
   {
    dst[0] = '\0';
   }
  }
  return 0;
 }
 if (size == 1)
 {
  dst[0] = '\0';
  return 0;
 }
 if (size == 0)
 {

  size = 0x7fffffff;
 }


 len = StrLen(src);
 if (len <= (size - 1))
 {
  Copy(dst, src, len + 1);
 }
 else
 {
  len = size - 1;
  Copy(dst, src, len);
  dst[len] = '\0';
 }


 KS_INC(KS_STRCPY_COUNT);

 return len;
}
