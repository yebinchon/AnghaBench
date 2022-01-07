
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFMIN (int,int) ;

__attribute__((used)) static void subsampling_bounds(int sub, int *x, int *w, int *start, int *end)
{
    int mask = (1 << sub) - 1;

    *start = (-*x) & mask;
    *x += *start;
    *start = FFMIN(*start, *w);
    *w -= *start;
    *end = *w & mask;
    *w >>= sub;
}
