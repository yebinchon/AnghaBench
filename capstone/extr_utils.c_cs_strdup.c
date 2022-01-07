
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* cs_mem_malloc (size_t) ;
 scalar_t__ memmove (void*,char const*,size_t) ;
 int strlen (char const*) ;

char *cs_strdup(const char *str)
{
 size_t len = strlen(str)+ 1;
 void *new = cs_mem_malloc(len);

 if (new == ((void*)0))
  return ((void*)0);

 return (char *)memmove(new, str, len);
}
