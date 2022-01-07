
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strchr(const char *string, int c)
{
    while (*string) {
        if (*string == c)
            return (char *)string;
        string++;
    }

    if (*string == c)
        return (char *)string;

    return ((void*)0);
}
