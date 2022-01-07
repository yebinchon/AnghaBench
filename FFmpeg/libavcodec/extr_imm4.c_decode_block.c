
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_9__ {int bits; int table; } ;
struct TYPE_8__ {TYPE_2__* priv_data; } ;
struct TYPE_6__ {size_t* permutated; } ;
struct TYPE_7__ {int** block; int hi; TYPE_1__ intra_scantable; } ;
typedef TYPE_2__ IMM4Context ;
typedef int GetBitContext ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 TYPE_5__ block_tab ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_sbits (int *,int) ;
 int get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static int decode_block(AVCodecContext *avctx, GetBitContext *gb,
                        int block, int factor, int flag, int offset, int flag2)
{
    IMM4Context *s = avctx->priv_data;
    const uint8_t *scantable = s->intra_scantable.permutated;
    int i, last, len, factor2;

    for (i = !flag; i < 64; i++) {
        int value;

        value = get_vlc2(gb, block_tab.table, block_tab.bits, 1);
        if (value < 0)
            return AVERROR_INVALIDDATA;
        if (value == 0) {
            last = get_bits1(gb);
            len = get_bits(gb, 6);
            factor2 = get_sbits(gb, 8);
        } else {
            factor2 = value & 0x7F;
            last = (value >> 14) & 1;
            len = (value >> 7) & 0x3F;
            if (get_bits1(gb))
                factor2 = -factor2;
        }
        i += len;
        if (i >= 64)
            break;
        s->block[block][scantable[i]] = offset * (factor2 < 0 ? -1 : 1) + factor * factor2;
        if (last)
            break;
    }

    if (s->hi == 2 && flag2 && block < 4) {
        if (flag)
            s->block[block][scantable[0]] *= 2;
        s->block[block][scantable[1]] *= 2;
        s->block[block][scantable[8]] *= 2;
        s->block[block][scantable[16]] *= 2;
    }

    return 0;
}
