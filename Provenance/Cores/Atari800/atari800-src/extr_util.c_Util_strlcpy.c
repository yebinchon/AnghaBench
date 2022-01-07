
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Util_strncpy (char*,char const*,size_t) ;

char *Util_strlcpy(char *dest, const char *src, size_t size)
{
 Util_strncpy(dest, src, size);
 dest[size - 1] = '\0';
 return dest;
}
