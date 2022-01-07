
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int Copy (char*,char*,int) ;
 int KS_INC (int ) ;
 int KS_STRCAT_COUNT ;
 int StrLen (char*) ;

UINT StrCat(char *dst, UINT size, char *src)
{
 UINT len1, len2, len_test;

 if (dst == ((void*)0) || src == ((void*)0))
 {
  return 0;
 }


 KS_INC(KS_STRCAT_COUNT);

 if (size == 0)
 {

  size = 0x7fffffff;
 }

 len1 = StrLen(dst);
 len2 = StrLen(src);
 len_test = len1 + len2 + 1;
 if (len_test > size)
 {
  if (len2 <= (len_test - size))
  {
   return 0;
  }
  len2 -= len_test - size;
 }
 Copy(dst + len1, src, len2);
 dst[len1 + len2] = 0;

 return len1 + len2;
}
