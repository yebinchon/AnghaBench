
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PATH ;
 int NukuEn (char*,int *) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

void GetDirFromPath(char *dst, char *src)
{
 char str[MAX_PATH];
 int i,len;
 char c;
 char tmp[MAX_PATH];
 int wp;
 if (src)
 {
  strcpy(str, src);
 }
 else
 {
  strcpy(str, dst);
 }
 NukuEn(str, ((void*)0));
 wp = 0;
 len = strlen(str);
 dst[0] = 0;
 for (i = 0;i < len;i++)
 {
  c = str[i];
  switch (c)
  {
  case '\\':
   tmp[wp] = 0;
   wp = 0;
   strcat(dst, tmp);
   strcat(dst, "\\");
   break;
  default:
   tmp[wp] = c;
   wp++;
   break;
  }
 }
 NukuEn(dst, ((void*)0));
}
