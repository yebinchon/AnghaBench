
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_binding_values (char const*,char const**,int *) ;

char *
BINDTEXTDOMAIN (const char *domainname, const char *dirname)
{
  set_binding_values (domainname, &dirname, ((void*)0));
  return (char *) dirname;
}
