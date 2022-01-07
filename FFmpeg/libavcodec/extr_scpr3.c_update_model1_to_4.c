
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int n ;
struct TYPE_5__ {int size; int type; scalar_t__* symbols; int* freqs; int maxpos; int member_0; } ;
typedef TYPE_1__ PixelModel3 ;


 int AV_QSORT (scalar_t__*,int,int ,int ) ;
 int cmpbytes ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int uint8_t ;

__attribute__((used)) static int update_model1_to_4(PixelModel3 *m, uint32_t val)
{
    PixelModel3 n = {0};
    int size, i;

    size = m->size;
    n.type = 4;
    n.size = size;
    for (i = 0; i < n.size; i++) {
        n.symbols[i] = m->symbols[i];
    }
    AV_QSORT(n.symbols, size, uint8_t, cmpbytes);
    for (i = 0; i < n.size; i++) {
        if (val == n.symbols[i]) {
            n.freqs[i] = 100;
            n.maxpos = i;
        } else {
            n.freqs[i] = 50;
        }
    }

    memcpy(m, &n, sizeof(n));

    return 0;
}
