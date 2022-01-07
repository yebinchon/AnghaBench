
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_binding_values (char const*,int *,char const**) ;

char *
BIND_TEXTDOMAIN_CODESET (const char *domainname, const char *codeset)
{
  set_binding_values (domainname, ((void*)0), &codeset);
  return (char *) codeset;
}
