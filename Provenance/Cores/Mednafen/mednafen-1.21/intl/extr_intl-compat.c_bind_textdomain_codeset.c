
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* libintl_bind_textdomain_codeset (char const*,char const*) ;

char *
bind_textdomain_codeset (const char *domainname, const char *codeset)
{
  return libintl_bind_textdomain_codeset (domainname, codeset);
}
