
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 int memmove (char*,char*,int) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static void strip_cr(char *str)
{
 int len = strlen(str);
 char *p = str;

 while ((p = strchr(p, '\r')))
 {
  memmove(p, p + 1, len - (p - str) + 1);
 }
 if (strlen(str) > 0)
 {
  p = str + strlen(str) - 1;
  while (p >= str && isspace(*p)) { *p = 0; p--; }
 }
 strcat(str, "\n");
}
