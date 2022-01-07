
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 int StrCat (char*,size_t,char*) ;
 int StrCpy (char*,size_t,char*) ;
 size_t StrLen (char*) ;

void GetOmissionName(char *dst, UINT size, char *src)
{
 UINT i, len;

 if (dst == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 StrCpy(dst, size, "");
 len = StrLen(src);

 for (i = 0;i < len;i++)
 {
  char c = src[i];

  if ((c >= '0' && c <= '9') ||
   (c >= 'A' && c <= 'Z'))
  {
   char tmp[2];
   tmp[0] = c;
   tmp[1] = 0;

   StrCat(dst, size, tmp);
  }
 }
}
