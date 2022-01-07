
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static int make_ydt24_entry(int p1, int p2, int16_t *ydt)
{
    int lo, hi;

    lo = ydt[p1];
    hi = ydt[p2];
    return (lo + (hi * (1 << 8)) + (hi * (1 << 16))) * 2;
}
