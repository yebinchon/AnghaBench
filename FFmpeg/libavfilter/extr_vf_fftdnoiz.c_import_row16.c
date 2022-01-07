
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ im; int re; } ;
typedef TYPE_1__ FFTComplex ;



__attribute__((used)) static void import_row16(FFTComplex *dst, uint8_t *srcp, int rw)
{
    uint16_t *src = (uint16_t *)srcp;
    int j;

    for (j = 0; j < rw; j++) {
        dst[j].re = src[j];
        dst[j].im = 0;
    }
}
