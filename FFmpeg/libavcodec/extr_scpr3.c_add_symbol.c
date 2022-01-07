
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int size; int* freqs; int maxpos; int * symbols; } ;
typedef TYPE_1__ PixelModel3 ;


 int rescale (TYPE_1__*,int*) ;

__attribute__((used)) static int add_symbol(PixelModel3 *m, int index, uint32_t symbol, int *totfr, int max)
{
    if (m->size == max)
        return 0;

    for (int c = m->size - 1; c >= index; c--) {
        m->symbols[c + 1] = m->symbols[c];
        m->freqs[c + 1] = m->freqs[c];
    }

    m->symbols[index] = symbol;
    m->freqs[index] = 50;
    m->size++;

    if (m->maxpos >= index)
        m->maxpos++;

    *totfr += 50;
    if (*totfr + 50 > 4096)
        rescale(m, totfr);

    return 1;
}
