
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int length; int* symbols; int* freqs; int* cnts; } ;
typedef TYPE_1__ PixelModel3 ;



__attribute__((used)) static int add_dec(PixelModel3 *m, int sym, int f1, int f2)
{
    int size;

    if (m->size >= 40 || m->size >= m->length)
        return -1;

    size = m->size;
    m->symbols[size] = sym;
    m->freqs[2 * size] = f1;
    m->freqs[2 * size + 1] = f2;
    m->cnts[size] = f1 - (f1 >> 1);
    m->size++;

    return size;
}
