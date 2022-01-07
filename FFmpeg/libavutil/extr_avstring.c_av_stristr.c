
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ av_stristart (char const*,char const*,int *) ;

char *av_stristr(const char *s1, const char *s2)
{
    if (!*s2)
        return (char*)(intptr_t)s1;

    do
        if (av_stristart(s1, s2, ((void*)0)))
            return (char*)(intptr_t)s1;
    while (*s1++);

    return ((void*)0);
}
