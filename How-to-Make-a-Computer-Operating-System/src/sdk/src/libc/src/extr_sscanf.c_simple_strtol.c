
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long simple_strtoul (char const*,char**,unsigned int) ;

long simple_strtol(const char *cp,char **endp,unsigned int base)
{
 if(*cp=='-')
  return -simple_strtoul(cp+1,endp,base);
 return simple_strtoul(cp,endp,base);
}
