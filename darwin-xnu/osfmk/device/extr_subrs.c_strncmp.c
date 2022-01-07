
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
strncmp(
        const char *s1,
        const char *s2,
        size_t n)
{
        unsigned int a, b;

        while (n != 0) {
                a = *s1++;
                b = *s2++;
                if (a != b)
                        return a-b;


                if (a == '\0')
                        return 0;
                n--;
 }

        return 0;
}
