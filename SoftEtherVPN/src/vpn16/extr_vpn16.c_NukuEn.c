
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PATH ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

void NukuEn(char *dst, char *src)
{
 char str[MAX_PATH];
 int i;
 if (src)
 {
  strcpy(str, src);
 }
 else
 {
  strcpy(str, dst);
 }
 i = strlen(str);
 if (str[i - 1] == '\\')
 {
  str[i - 1] = 0;
 }
 strcpy(dst, str);
}
