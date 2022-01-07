
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int extend53 (unsigned int*,int,int) ;

__attribute__((used)) static void sr_1d53(unsigned *p, int i0, int i1)
{
    int i;

    if (i1 <= i0 + 1) {
        if (i0 == 1)
            p[1] = (int)p[1] >> 1;
        return;
    }

    extend53(p, i0, i1);

    for (i = (i0 >> 1); i < (i1 >> 1) + 1; i++)
        p[2 * i] -= (int)(p[2 * i - 1] + p[2 * i + 1] + 2) >> 2;
    for (i = (i0 >> 1); i < (i1 >> 1); i++)
        p[2 * i + 1] += (int)(p[2 * i] + p[2 * i + 2]) >> 1;
}
