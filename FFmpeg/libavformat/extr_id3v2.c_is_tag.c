
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_tag(const char *buf, unsigned int len)
{
    if (!len)
        return 0;

    while (len--)
        if ((buf[len] < 'A' ||
             buf[len] > 'Z') &&
            (buf[len] < '0' ||
             buf[len] > '9'))
            return 0;

    return 1;
}
