
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int version; int alpha; int chroma; int * bits; int * len; int vlc_n; int * vlc; } ;
typedef TYPE_1__ HYuvContext ;
typedef int GetBitContext ;


 int VLC_BITS ;
 int ff_free_vlc (int *) ;
 int ff_huffyuv_generate_bits_table (int ,int ,int ) ;
 int generate_joint_tables (TYPE_1__*) ;
 int get_bits_count (int *) ;
 int init_get_bits (int *,int const*,int) ;
 int init_vlc (int *,int ,int ,int ,int,int,int ,int,int,int ) ;
 int read_len_table (int ,int *,int ) ;

__attribute__((used)) static int read_huffman_tables(HYuvContext *s, const uint8_t *src, int length)
{
    GetBitContext gb;
    int i, ret;
    int count = 3;

    if ((ret = init_get_bits(&gb, src, length * 8)) < 0)
        return ret;

    if (s->version > 2)
        count = 1 + s->alpha + 2*s->chroma;

    for (i = 0; i < count; i++) {
        if ((ret = read_len_table(s->len[i], &gb, s->vlc_n)) < 0)
            return ret;
        if ((ret = ff_huffyuv_generate_bits_table(s->bits[i], s->len[i], s->vlc_n)) < 0)
            return ret;
        ff_free_vlc(&s->vlc[i]);
        if ((ret = init_vlc(&s->vlc[i], VLC_BITS, s->vlc_n, s->len[i], 1, 1,
                           s->bits[i], 4, 4, 0)) < 0)
            return ret;
    }

    if ((ret = generate_joint_tables(s)) < 0)
        return ret;

    return (get_bits_count(&gb) + 7) / 8;
}
