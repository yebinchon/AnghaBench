
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (int,int) ;
 int mem_check (char*) ;
 int memcpy (char*,char const*,int) ;
 char* realloc (char*,int) ;
 int strlen (char const*) ;

char *http_utils_assign_string(char **str, const char *new_str, int len)
{
    int l = len;
    if (new_str == ((void*)0)) {
        return ((void*)0);
    }
    char *old_str = *str;
    if (l <= 0) {
        l = strlen(new_str);
    }
    if (old_str) {
        old_str = realloc(old_str, l + 1);
        mem_check(old_str);
        old_str[l] = 0;
    } else {
        old_str = calloc(1, l + 1);
        mem_check(old_str);
    }
    memcpy(old_str, new_str, l);
    *str = old_str;
    return old_str;
}
