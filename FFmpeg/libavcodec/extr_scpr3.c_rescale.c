
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int size; int* freqs; } ;
typedef TYPE_1__ PixelModel3 ;



__attribute__((used)) static void rescale(PixelModel3 *m, int *totfr)
{
    uint32_t a;

    a = 256 - m->size;
    for (int b = 0; b < m->size; b++) {
        m->freqs[b] -= m->freqs[b] >> 1;
        a += m->freqs[b];
    }

    *totfr = a;
}
