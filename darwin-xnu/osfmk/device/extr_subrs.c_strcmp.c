
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
strcmp(
        const char *s1,
        const char *s2)
{
        unsigned int a, b;

        do {
                a = *s1++;
                b = *s2++;
                if (a != b)
                        return a-b;


 } while (a != '\0');

        return 0;
}
