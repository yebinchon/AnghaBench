
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* str_intern_range (char const*,char const*) ;
 int strlen (char const*) ;

const char *str_intern(const char *str) {
    return str_intern_range(str, str + strlen(str));
}
