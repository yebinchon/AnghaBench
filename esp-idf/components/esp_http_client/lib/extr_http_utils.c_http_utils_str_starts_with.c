
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

int http_utils_str_starts_with(const char *str, const char *start)
{
    int i;
    int match_str_len = strlen(str);
    int start_len = strlen(start);

    if (start_len > match_str_len) {
        return -1;
    }
    for (i = 0; i < start_len; i++) {
        if (str[i] != start[i]) {
            return 1;
        }
    }
    return 0;
}
