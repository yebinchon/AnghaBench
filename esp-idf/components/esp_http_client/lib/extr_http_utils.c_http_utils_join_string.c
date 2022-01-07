
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (int,int) ;
 int mem_check (char*) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

char *http_utils_join_string(const char *first_str, int len_first, const char *second_str, int len_second)
{
    int first_str_len = len_first > 0 ? len_first : strlen(first_str);
    int second_str_len = len_second > 0 ? len_second : strlen(second_str);
    char *ret = ((void*)0);
    if (first_str_len + second_str_len > 0) {
        ret = calloc(1, first_str_len + second_str_len + 1);
        mem_check(ret);
        memcpy(ret, first_str, first_str_len);
        memcpy(ret + first_str_len, second_str, second_str_len);
    }
    return ret;
}
