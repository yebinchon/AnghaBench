
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tolower (char const) ;

int strncasecmp(const char *s1, const char *s2, int limit)
{
    int i;

    for (i = 0; i < limit; i++) {
        if (*s1 == '\0')
            return tolower(*(unsigned char *)s1) - tolower(*(unsigned char *)s2);

        if (tolower(*s1) != tolower(*s2))
            return tolower(*(unsigned char *)s1) - tolower(*(unsigned char *)s2);

        s1++;
        s2++;
    }

    return 0;
}
