
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static bool httpd_uri_match_simple(const char *uri1, const char *uri2, size_t len2)
{
    return strlen(uri1) == len2 &&
        (strncmp(uri1, uri2, len2) == 0);
}
