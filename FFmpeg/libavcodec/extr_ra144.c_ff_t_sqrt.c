
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ff_sqrt (unsigned int) ;

int ff_t_sqrt(unsigned int x)
{
    int s = 2;
    while (x > 0xfff) {
        s++;
        x >>= 2;
    }

    return ff_sqrt(x << 20) << s;
}
