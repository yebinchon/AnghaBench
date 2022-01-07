
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 int IsSafeChar (char) ;
 int StrCpy (char*,size_t,char*) ;
 size_t StrLen (char*) ;

void ConvertSafeFileName(char *dst, UINT size, char *src)
{
 UINT i;

 if (dst == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 StrCpy(dst, size, src);
 for (i = 0;i < StrLen(dst);i++)
 {
  if (IsSafeChar(dst[i]) == 0)
  {
   dst[i] = '_';
  }
 }
}
