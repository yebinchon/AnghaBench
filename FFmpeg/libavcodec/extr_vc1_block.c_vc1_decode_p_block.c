
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_11__ {int (* vc1_inv_trans_4x8 ) (int *,int,int*) ;int (* vc1_inv_trans_4x8_dc ) (int *,int,int*) ;int (* vc1_inv_trans_8x4 ) (int *,int,int*) ;int (* vc1_inv_trans_8x4_dc ) (int *,int,int*) ;int (* vc1_inv_trans_4x4 ) (int *,int,int*) ;int (* vc1_inv_trans_4x4_dc ) (int *,int,int*) ;int (* vc1_inv_trans_8x8 ) (int*) ;int (* vc1_inv_trans_8x8_dc ) (int *,int,int*) ;} ;
struct TYPE_10__ {int (* add_pixels_clamped ) (int*,int *,int) ;} ;
struct TYPE_12__ {int (* clear_block ) (int*) ;} ;
struct TYPE_14__ {TYPE_1__ idsp; TYPE_3__ bdsp; int gb; } ;
struct TYPE_13__ {size_t tt_index; int halfpq; int** zz_8x8; int* zzi_8x8; TYPE_2__ vc1dsp; int pquantizer; int * zz_4x8; int fcm; int codingset2; int * zz_8x4; int res_rtm_flag; scalar_t__ ttmbf; TYPE_5__ s; } ;
typedef TYPE_4__ VC1Context ;
struct TYPE_16__ {int table; } ;
struct TYPE_15__ {int table; } ;
typedef TYPE_5__ MpegEncContext ;
typedef int GetBitContext ;


 int FFABS (int) ;


 int TT_4X8_LEFT ;
 int TT_4X8_RIGHT ;

 int TT_8X4_BOTTOM ;
 int TT_8X4_TOP ;

 int VC1_SUBBLKPAT_VLC_BITS ;
 int VC1_TTBLK_VLC_BITS ;
 int decode012 (int *) ;
 int* ff_vc1_adv_interlaced_4x4_zz ;
 int * ff_vc1_adv_interlaced_4x8_zz ;
 int * ff_vc1_adv_interlaced_8x4_zz ;
 int* ff_vc1_simple_progressive_4x4_zz ;
 TYPE_9__* ff_vc1_subblkpat_vlc ;
 int** ff_vc1_ttblk_to_tt ;
 TYPE_8__* ff_vc1_ttblk_vlc ;
 int get_vlc2 (int *,int ,int ,int) ;
 int stub1 (int*) ;
 int stub10 (int *,int,int*) ;
 int stub2 (int *,int,int*) ;
 int stub3 (int*) ;
 int stub4 (int*,int *,int) ;
 int stub5 (int *,int,int*) ;
 int stub6 (int *,int,int*) ;
 int stub7 (int *,int,int*) ;
 int stub8 (int *,int,int*) ;
 int stub9 (int *,int,int*) ;
 int vc1_decode_ac_coeff (TYPE_4__*,int*,int*,int*,int ) ;

__attribute__((used)) static int vc1_decode_p_block(VC1Context *v, int16_t block[64], int n,
                              int mquant, int ttmb, int first_block,
                              uint8_t *dst, int linesize, int skip_block,
                              int *ttmb_out)
{
    MpegEncContext *s = &v->s;
    GetBitContext *gb = &s->gb;
    int i, j;
    int subblkpat = 0;
    int scale, off, idx, last, skip, value;
    int ttblk = ttmb & 7;
    int pat = 0;
    int quant = FFABS(mquant);

    s->bdsp.clear_block(block);

    if (ttmb == -1) {
        ttblk = ff_vc1_ttblk_to_tt[v->tt_index][get_vlc2(gb, ff_vc1_ttblk_vlc[v->tt_index].table, VC1_TTBLK_VLC_BITS, 1)];
    }
    if (ttblk == 131) {
        subblkpat = ~(get_vlc2(gb, ff_vc1_subblkpat_vlc[v->tt_index].table, VC1_SUBBLKPAT_VLC_BITS, 1) + 1);
    }
    if ((ttblk != 128 && ttblk != 131)
        && ((v->ttmbf || (ttmb != -1 && (ttmb & 8) && !first_block))
            || (!v->res_rtm_flag && !first_block))) {
        subblkpat = decode012(gb);
        if (subblkpat)
            subblkpat ^= 3;
        if (ttblk == TT_8X4_TOP || ttblk == TT_8X4_BOTTOM)
            ttblk = 129;
        if (ttblk == TT_4X8_RIGHT || ttblk == TT_4X8_LEFT)
            ttblk = 130;
    }
    scale = quant * 2 + ((mquant < 0) ? 0 : v->halfpq);


    if (ttblk == TT_8X4_TOP || ttblk == TT_8X4_BOTTOM) {
        subblkpat = 2 - (ttblk == TT_8X4_TOP);
        ttblk = 129;
    }
    if (ttblk == TT_4X8_RIGHT || ttblk == TT_4X8_LEFT) {
        subblkpat = 2 - (ttblk == TT_4X8_LEFT);
        ttblk = 130;
    }
    switch (ttblk) {
    case 128:
        pat = 0xF;
        i = 0;
        last = 0;
        while (!last) {
            int ret = vc1_decode_ac_coeff(v, &last, &skip, &value, v->codingset2);
            if (ret < 0)
                return ret;
            i += skip;
            if (i > 63)
                break;
            if (!v->fcm)
                idx = v->zz_8x8[0][i++];
            else
                idx = v->zzi_8x8[i++];
            block[idx] = value * scale;
            if (!v->pquantizer)
                block[idx] += (block[idx] < 0) ? -quant : quant;
        }
        if (!skip_block) {
            if (i == 1)
                v->vc1dsp.vc1_inv_trans_8x8_dc(dst, linesize, block);
            else {
                v->vc1dsp.vc1_inv_trans_8x8(block);
                s->idsp.add_pixels_clamped(block, dst, linesize);
            }
        }
        break;
    case 131:
        pat = ~subblkpat & 0xF;
        for (j = 0; j < 4; j++) {
            last = subblkpat & (1 << (3 - j));
            i = 0;
            off = (j & 1) * 4 + (j & 2) * 16;
            while (!last) {
                int ret = vc1_decode_ac_coeff(v, &last, &skip, &value, v->codingset2);
                if (ret < 0)
                    return ret;
                i += skip;
                if (i > 15)
                    break;
                if (!v->fcm)
                    idx = ff_vc1_simple_progressive_4x4_zz[i++];
                else
                    idx = ff_vc1_adv_interlaced_4x4_zz[i++];
                block[idx + off] = value * scale;
                if (!v->pquantizer)
                    block[idx + off] += (block[idx + off] < 0) ? -quant : quant;
            }
            if (!(subblkpat & (1 << (3 - j))) && !skip_block) {
                if (i == 1)
                    v->vc1dsp.vc1_inv_trans_4x4_dc(dst + (j & 1) * 4 + (j & 2) * 2 * linesize, linesize, block + off);
                else
                    v->vc1dsp.vc1_inv_trans_4x4(dst + (j & 1) * 4 + (j & 2) * 2 * linesize, linesize, block + off);
            }
        }
        break;
    case 129:
        pat = ~((subblkpat & 2) * 6 + (subblkpat & 1) * 3) & 0xF;
        for (j = 0; j < 2; j++) {
            last = subblkpat & (1 << (1 - j));
            i = 0;
            off = j * 32;
            while (!last) {
                int ret = vc1_decode_ac_coeff(v, &last, &skip, &value, v->codingset2);
                if (ret < 0)
                    return ret;
                i += skip;
                if (i > 31)
                    break;
                if (!v->fcm)
                    idx = v->zz_8x4[i++] + off;
                else
                    idx = ff_vc1_adv_interlaced_8x4_zz[i++] + off;
                block[idx] = value * scale;
                if (!v->pquantizer)
                    block[idx] += (block[idx] < 0) ? -quant : quant;
            }
            if (!(subblkpat & (1 << (1 - j))) && !skip_block) {
                if (i == 1)
                    v->vc1dsp.vc1_inv_trans_8x4_dc(dst + j * 4 * linesize, linesize, block + off);
                else
                    v->vc1dsp.vc1_inv_trans_8x4(dst + j * 4 * linesize, linesize, block + off);
            }
        }
        break;
    case 130:
        pat = ~(subblkpat * 5) & 0xF;
        for (j = 0; j < 2; j++) {
            last = subblkpat & (1 << (1 - j));
            i = 0;
            off = j * 4;
            while (!last) {
                int ret = vc1_decode_ac_coeff(v, &last, &skip, &value, v->codingset2);
                if (ret < 0)
                    return ret;
                i += skip;
                if (i > 31)
                    break;
                if (!v->fcm)
                    idx = v->zz_4x8[i++] + off;
                else
                    idx = ff_vc1_adv_interlaced_4x8_zz[i++] + off;
                block[idx] = value * scale;
                if (!v->pquantizer)
                    block[idx] += (block[idx] < 0) ? -quant : quant;
            }
            if (!(subblkpat & (1 << (1 - j))) && !skip_block) {
                if (i == 1)
                    v->vc1dsp.vc1_inv_trans_4x8_dc(dst + j * 4, linesize, block + off);
                else
                    v->vc1dsp.vc1_inv_trans_4x8(dst + j*4, linesize, block + off);
            }
        }
        break;
    }
    if (ttmb_out)
        *ttmb_out |= ttblk << (n * 4);
    return pat;
}
