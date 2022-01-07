
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* strf (char*,char const*) ;

const char *cdecl_paren(const char *str, char c) {
    return c && c != '[' ? strf("(%s)", str) : str;
}
