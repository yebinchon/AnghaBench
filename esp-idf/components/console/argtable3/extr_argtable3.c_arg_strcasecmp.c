
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tolower (unsigned char const) ;

__attribute__((used)) static int arg_strcasecmp(const char *s1, const char *s2)
{
    const unsigned char *us1 = (const unsigned char *)s1;
    const unsigned char *us2 = (const unsigned char *)s2;
    while (tolower(*us1) == tolower(*us2++))
        if (*us1++ == '\0')
            return 0;

    return tolower(*us1) - tolower(*--us2);
}
