
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strcpy(
        char *to,
        const char *from)
{
        char *ret = to;

        while ((*to++ = *from++) != '\0')
                continue;

        return ret;
}
