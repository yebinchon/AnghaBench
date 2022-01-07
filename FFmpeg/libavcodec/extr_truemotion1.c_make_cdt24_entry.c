
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static int make_cdt24_entry(int p1, int p2, int16_t *cdt)
{
    int r, b;

    b = cdt[p2];
    r = cdt[p1] * (1 << 16);
    return (b+r) * 2;
}
