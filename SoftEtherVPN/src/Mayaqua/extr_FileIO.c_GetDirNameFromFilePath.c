
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef size_t UINT ;


 scalar_t__ EndWith (char*,char*) ;
 int MAX_SIZE ;
 int NormalizePath (char*,size_t,char*) ;
 int StrCat (char*,size_t,char*) ;
 int StrCpy (char*,size_t,char*) ;
 int StrLen (char*) ;

void GetDirNameFromFilePath(char *dst, UINT size, char *filepath)
{
 char tmp[MAX_SIZE];
 UINT wp;
 UINT i;
 UINT len;

 if (dst == ((void*)0) || filepath == ((void*)0))
 {
  return;
 }

 StrCpy(tmp, sizeof(tmp), filepath);
 if (EndWith(tmp, "\\") || EndWith(tmp, "/"))
 {
  tmp[StrLen(tmp) - 1] = 0;
 }

 len = StrLen(tmp);

 StrCpy(dst, size, "");

 wp = 0;

 for (i = 0;i < len;i++)
 {
  char c = tmp[i];
  if (c == '/' || c == '\\')
  {
   tmp[wp++] = 0;
   wp = 0;
   StrCat(dst, size, tmp);
   tmp[wp++] = c;
  }
  else
  {
   tmp[wp++] = c;
  }
 }

 if (StrLen(dst) == 0)
 {
  StrCpy(dst, size, "/");
 }

 NormalizePath(dst, size, dst);
}
