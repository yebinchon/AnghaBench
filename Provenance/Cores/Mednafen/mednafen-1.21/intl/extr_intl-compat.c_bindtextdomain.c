
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* libintl_bindtextdomain (char const*,char const*) ;

char *
bindtextdomain (const char *domainname, const char *dirname)
{
  return libintl_bindtextdomain (domainname, dirname);
}
