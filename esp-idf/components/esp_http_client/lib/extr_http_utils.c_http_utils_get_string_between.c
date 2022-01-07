
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (int,int) ;
 int mem_check (char*) ;
 int memcpy (char*,char*,int) ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

char *http_utils_get_string_between(const char *str, const char *begin, const char *end)
{
    char *found = strstr(str, begin);
    char *ret = ((void*)0);
    if (found) {
        found += strlen(begin);
        char *found_end = strstr(found, end);
        if (found_end) {
            ret = calloc(1, found_end - found + 1);
            mem_check(ret);
            memcpy(ret, found, found_end - found);
            return ret;
        }
    }
    return ((void*)0);
}
