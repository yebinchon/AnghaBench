
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Util_malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char *Util_strdup(const char *s)
{

 size_t size = strlen(s) + 1;
 char *ptr = (char *) Util_malloc(size);
 memcpy(ptr, s, size);
 return ptr;
}
