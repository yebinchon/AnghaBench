
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int version; int alpha; int chroma; int * len; int vlc_n; int * bits; int * stats; } ;
typedef TYPE_1__ HYuvContext ;


 int ff_huff_gen_len_table (int ,int ,int ,int ) ;
 scalar_t__ ff_huffyuv_generate_bits_table (int ,int ,int ) ;
 scalar_t__ store_table (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int store_huffman_tables(HYuvContext *s, uint8_t *buf)
{
    int i, ret;
    int size = 0;
    int count = 3;

    if (s->version > 2)
        count = 1 + s->alpha + 2*s->chroma;

    for (i = 0; i < count; i++) {
        if ((ret = ff_huff_gen_len_table(s->len[i], s->stats[i], s->vlc_n, 0)) < 0)
            return ret;

        if (ff_huffyuv_generate_bits_table(s->bits[i], s->len[i], s->vlc_n) < 0) {
            return -1;
        }

        size += store_table(s, s->len[i], buf + size);
    }
    return size;
}
