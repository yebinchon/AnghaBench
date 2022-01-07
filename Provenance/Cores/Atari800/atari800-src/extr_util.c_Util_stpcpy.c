
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

char *Util_stpcpy(char *dest, const char *src)
{
 size_t len = strlen(src);
 memcpy(dest, src, len + 1);
 return dest + len;
}
