
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* libintl_textdomain (char const*) ;

char *
textdomain (const char *domainname)
{
  return libintl_textdomain (domainname);
}
