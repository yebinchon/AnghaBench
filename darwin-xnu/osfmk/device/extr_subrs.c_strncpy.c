
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strncpy(
 char *s1,
 const char *s2,
 size_t n)
{
        char *os1 = s1;
        unsigned long i;

        for (i = 0; i < n;)
                if ((*s1++ = *s2++) == '\0')
                        for (i++; i < n; i++)
                                *s1++ = '\0';
                else
                        i++;
        return (os1);
}
