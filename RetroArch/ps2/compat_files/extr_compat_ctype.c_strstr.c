
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,scalar_t__) ;

char *strstr(const char *string, const char *substring)
{
    char *strpos;

    if (string == 0)
        return 0;

    if (strlen(substring) == 0)
        return (char *)string;

    strpos = (char *)string;

    while (*strpos != 0) {
        if (strncmp(strpos, substring, strlen(substring)) == 0)
            return strpos;

        strpos++;
    }

    return 0;
}
