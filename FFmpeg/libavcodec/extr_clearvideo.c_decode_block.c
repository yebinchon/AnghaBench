
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_6__ {int table; } ;
struct TYPE_5__ {int table; } ;
struct TYPE_7__ {TYPE_2__ ac_vlc; TYPE_1__ dc_vlc; int gb; } ;
typedef int GetBitContext ;
typedef TYPE_3__ CLVContext ;


 int AVERROR_INVALIDDATA ;
 int FFABS (int) ;
 size_t* ff_zigzag_direct ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_sbits (int *,int) ;
 int get_vlc2 (int *,int ,int,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static inline int decode_block(CLVContext *ctx, int16_t *blk, int has_ac,
                               int ac_quant)
{
    GetBitContext *gb = &ctx->gb;
    int idx = 1, last = 0, val, skip;

    memset(blk, 0, sizeof(*blk) * 64);
    blk[0] = get_vlc2(gb, ctx->dc_vlc.table, 9, 3);
    if (blk[0] < 0)
        return AVERROR_INVALIDDATA;
    blk[0] -= 63;

    if (!has_ac)
        return 0;

    while (idx < 64 && !last) {
        val = get_vlc2(gb, ctx->ac_vlc.table, 9, 2);
        if (val < 0)
            return AVERROR_INVALIDDATA;
        if (val != 0x1BFF) {
            last = val >> 12;
            skip = (val >> 4) & 0xFF;
            val &= 0xF;
            if (get_bits1(gb))
                val = -val;
        } else {
            last = get_bits1(gb);
            skip = get_bits(gb, 6);
            val = get_sbits(gb, 8);
        }
        if (val) {
            int aval = FFABS(val), sign = val < 0;
            val = ac_quant * (2 * aval + 1);
            if (!(ac_quant & 1))
                val--;
            if (sign)
                val = -val;
        }
        idx += skip;
        if (idx >= 64)
            return AVERROR_INVALIDDATA;
        blk[ff_zigzag_direct[idx++]] = val;
    }

    return (idx <= 64 && last) ? 0 : -1;
}
