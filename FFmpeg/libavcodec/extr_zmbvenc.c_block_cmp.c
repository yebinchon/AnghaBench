
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int bypp; scalar_t__* score_tab; } ;
typedef TYPE_1__ ZmbvEncContext ;



__attribute__((used)) static inline int block_cmp(ZmbvEncContext *c, uint8_t *src, int stride,
                            uint8_t *src2, int stride2, int bw, int bh,
                            int *xored)
{
    int sum = 0;
    int i, j;
    uint16_t histogram[256] = {0};
    int bw_bytes = bw * c->bypp;


    for(j = 0; j < bh; j++){
        for(i = 0; i < bw_bytes; i++){
            int t = src[i] ^ src2[i];
            histogram[t]++;
        }
        src += stride;
        src2 += stride2;
    }


    *xored = (histogram[0] < bw_bytes * bh);


    if (!*xored) return 0;


    for(i = 0; i < 256; i++)
        sum += c->score_tab[histogram[i]];

    return sum;
}
