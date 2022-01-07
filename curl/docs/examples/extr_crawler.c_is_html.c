
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 scalar_t__ strstr (char*,char*) ;

int is_html(char *ctype)
{
  return ctype != ((void*)0) && strlen(ctype) > 10 && strstr(ctype, "text/html");
}
