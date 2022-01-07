
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 int strlen (char const*) ;

__attribute__((used)) static char *trimwhitespace(const char *str)
{
    char *end;


    while (isspace((unsigned char)*str)) str++;

    if (*str == 0) {
        return (char *)str;
    }


    end = (char *)(str + strlen(str) - 1);
    while (end > str && isspace((unsigned char)*end)) end--;


    *(end + 1) = 0;

    return (char *)str;
}
