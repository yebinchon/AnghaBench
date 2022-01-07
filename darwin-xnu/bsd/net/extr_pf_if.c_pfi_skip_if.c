
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif {char* pfik_name; } ;


 int IFNAMSIZ ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

int
pfi_skip_if(const char *filter, struct pfi_kif *p)
{
 int n;

 if (filter == ((void*)0) || !*filter)
  return (0);
 if (strcmp(p->pfik_name, filter) == 0)
  return (0);
 n = strlen(filter);
 if (n < 1 || n >= IFNAMSIZ)
  return (1);
 if (filter[n-1] >= '0' && filter[n-1] <= '9')
  return (1);
 if (strncmp(p->pfik_name, filter, n))
  return (1);
 return (p->pfik_name[n] < '0' || p->pfik_name[n] > '9');
}
