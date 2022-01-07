
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int ff_vorbis_nth_root(unsigned int x, unsigned int n)
{
    unsigned int ret = 0, i, j;

    do {
        ++ret;
        for (i = 0, j = ret; i < n - 1; i++)
            j *= ret;
    } while (j <= x);

    return ret - 1;
}
