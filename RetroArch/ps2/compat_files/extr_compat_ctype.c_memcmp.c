
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int memcmp(const void *s1, const void *s2, unsigned int length)
{
    const char *a = s1;
    const char *b = s2;

    while (length--) {
        if (*a++ != *b++)
            return 1;
    }

    return 0;
}
