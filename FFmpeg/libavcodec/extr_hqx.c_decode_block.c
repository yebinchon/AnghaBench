
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int table; } ;
typedef TYPE_1__ VLC ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int HQX_AC_Q0 ;
 int HQX_AC_Q128 ;
 int HQX_AC_Q16 ;
 int HQX_AC_Q32 ;
 int HQX_AC_Q64 ;
 int HQX_AC_Q8 ;
 int HQX_DC_VLC_BITS ;
 int * ff_hqx_ac ;
 size_t* ff_zigzag_direct ;
 size_t get_bits (int *,int) ;
 int get_vlc2 (int *,int ,int ,int) ;
 int hqx_get_ac (int *,int *,int*,int*) ;
 int memset (int*,int ,int) ;
 int sign_extend (int,int) ;

__attribute__((used)) static int decode_block(GetBitContext *gb, VLC *vlc,
                        const int *quants, int dcb,
                        int16_t block[64], int *last_dc)
{
    int q, dc;
    int ac_idx;
    int run, lev, pos = 1;

    memset(block, 0, 64 * sizeof(*block));
    dc = get_vlc2(gb, vlc->table, HQX_DC_VLC_BITS, 2);
    if (dc < 0)
        return AVERROR_INVALIDDATA;
    *last_dc += dc;

    block[0] = sign_extend(*last_dc << (12 - dcb), 12);

    q = quants[get_bits(gb, 2)];
    if (q >= 128)
        ac_idx = HQX_AC_Q128;
    else if (q >= 64)
        ac_idx = HQX_AC_Q64;
    else if (q >= 32)
        ac_idx = HQX_AC_Q32;
    else if (q >= 16)
        ac_idx = HQX_AC_Q16;
    else if (q >= 8)
        ac_idx = HQX_AC_Q8;
    else
        ac_idx = HQX_AC_Q0;

    do {
        hqx_get_ac(gb, &ff_hqx_ac[ac_idx], &run, &lev);
        pos += run;
        if (pos >= 64)
            break;
        block[ff_zigzag_direct[pos++]] = lev * q;
    } while (pos < 64);

    return 0;
}
