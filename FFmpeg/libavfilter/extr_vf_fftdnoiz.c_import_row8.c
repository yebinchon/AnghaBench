
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ im; int re; } ;
typedef TYPE_1__ FFTComplex ;



__attribute__((used)) static void import_row8(FFTComplex *dst, uint8_t *src, int rw)
{
    int j;

    for (j = 0; j < rw; j++) {
        dst[j].re = src[j];
        dst[j].im = 0;
    }
}
