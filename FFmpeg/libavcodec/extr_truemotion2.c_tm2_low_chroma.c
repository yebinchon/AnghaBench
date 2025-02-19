
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tm2_high_chroma (int*,int,int*,unsigned int*,int*) ;

__attribute__((used)) static inline void tm2_low_chroma(int *data, int stride, int *clast, unsigned *CD, int *deltas, int bx)
{
    int t;
    int l;
    int prev;

    if (bx > 0)
        prev = clast[-3];
    else
        prev = 0;
    t = (int)(CD[0] + CD[1]) >> 1;
    l = (int)(prev - CD[0] - CD[1] + clast[1]) >> 1;
    CD[1] = CD[0] + CD[1] - t;
    CD[0] = t;
    clast[0] = l;

    tm2_high_chroma(data, stride, clast, CD, deltas);
}
