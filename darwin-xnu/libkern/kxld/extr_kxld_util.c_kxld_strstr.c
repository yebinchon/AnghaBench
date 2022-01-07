
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 char const* strstr (char const*,char const*) ;

const char *
kxld_strstr(const char *s, const char *find)
{
    return strstr(s, find);

}
