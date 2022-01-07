
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 int memmove (char*,char*,int) ;
 int strlen (char*) ;

void http_utils_trim_whitespace(char **str)
{
    char *end, *start;
    if (str == ((void*)0)) {
        return;
    }
    start = *str;
    if (start == ((void*)0)) {
        return;
    }

    while (isspace((unsigned char)*start)) start ++;

    if (*start == 0) {
        **str = 0;
        return;
    }


    end = (char *)(start + strlen(start) - 1);
    while (end > start && isspace((unsigned char)*end)) {
        end--;
    }


    *(end + 1) = 0;
    memmove(*str, start, strlen(start) + 1);
}
