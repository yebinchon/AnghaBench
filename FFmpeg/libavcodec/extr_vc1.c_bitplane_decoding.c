
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int mb_width; int mb_height; int mb_stride; int gb; int avctx; } ;
struct TYPE_8__ {int field_mode; TYPE_1__ s; } ;
typedef TYPE_2__ VC1Context ;
struct TYPE_11__ {int table; } ;
struct TYPE_10__ {int table; } ;
struct TYPE_9__ {int table; } ;
typedef int GetBitContext ;


 int AV_LOG_DEBUG ;







 int VC1_IMODE_VLC_BITS ;
 int VC1_NORM2_VLC_BITS ;
 int VC1_NORM6_VLC_BITS ;
 int av_log (int ,int ,char*) ;
 int decode_colskip (int*,int,int,int,int *) ;
 int decode_rowskip (int*,int,int,int,int *) ;
 TYPE_5__ ff_vc1_imode_vlc ;
 TYPE_4__ ff_vc1_norm2_vlc ;
 TYPE_3__ ff_vc1_norm6_vlc ;
 void* get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static int bitplane_decoding(uint8_t* data, int *raw_flag, VC1Context *v)
{
    GetBitContext *gb = &v->s.gb;

    int imode, x, y, code, offset;
    uint8_t invert, *planep = data;
    int width, height, stride;

    width = v->s.mb_width;
    height = v->s.mb_height >> v->field_mode;
    stride = v->s.mb_stride;
    invert = get_bits1(gb);
    imode = get_vlc2(gb, ff_vc1_imode_vlc.table, VC1_IMODE_VLC_BITS, 1);

    *raw_flag = 0;
    switch (imode) {
    case 129:

        *raw_flag = 1;
        return invert;
    case 133:
    case 131:
        if ((height * width) & 1) {
            *planep++ = get_bits1(gb);
            y = offset = 1;
            if (offset == width) {
                offset = 0;
                planep += stride - width;
            }
        }
        else
            y = offset = 0;

        for (; y < height * width; y += 2) {
            code = get_vlc2(gb, ff_vc1_norm2_vlc.table, VC1_NORM2_VLC_BITS, 1);
            *planep++ = code & 1;
            offset++;
            if (offset == width) {
                offset = 0;
                planep += stride - width;
            }
            *planep++ = code >> 1;
            offset++;
            if (offset == width) {
                offset = 0;
                planep += stride - width;
            }
        }
        break;
    case 132:
    case 130:
        if (!(height % 3) && (width % 3)) {
            for (y = 0; y < height; y += 3) {
                for (x = width & 1; x < width; x += 2) {
                    code = get_vlc2(gb, ff_vc1_norm6_vlc.table, VC1_NORM6_VLC_BITS, 2);
                    if (code < 0) {
                        av_log(v->s.avctx, AV_LOG_DEBUG, "invalid NORM-6 VLC\n");
                        return -1;
                    }
                    planep[x + 0] = (code >> 0) & 1;
                    planep[x + 1] = (code >> 1) & 1;
                    planep[x + 0 + stride] = (code >> 2) & 1;
                    planep[x + 1 + stride] = (code >> 3) & 1;
                    planep[x + 0 + stride * 2] = (code >> 4) & 1;
                    planep[x + 1 + stride * 2] = (code >> 5) & 1;
                }
                planep += stride * 3;
            }
            if (width & 1)
                decode_colskip(data, 1, height, stride, &v->s.gb);
        } else {
            planep += (height & 1) * stride;
            for (y = height & 1; y < height; y += 2) {
                for (x = width % 3; x < width; x += 3) {
                    code = get_vlc2(gb, ff_vc1_norm6_vlc.table, VC1_NORM6_VLC_BITS, 2);
                    if (code < 0) {
                        av_log(v->s.avctx, AV_LOG_DEBUG, "invalid NORM-6 VLC\n");
                        return -1;
                    }
                    planep[x + 0] = (code >> 0) & 1;
                    planep[x + 1] = (code >> 1) & 1;
                    planep[x + 2] = (code >> 2) & 1;
                    planep[x + 0 + stride] = (code >> 3) & 1;
                    planep[x + 1 + stride] = (code >> 4) & 1;
                    planep[x + 2 + stride] = (code >> 5) & 1;
                }
                planep += stride * 2;
            }
            x = width % 3;
            if (x)
                decode_colskip(data, x, height, stride, &v->s.gb);
            if (height & 1)
                decode_rowskip(data + x, width - x, 1, stride, &v->s.gb);
        }
        break;
    case 128:
        decode_rowskip(data, width, height, stride, &v->s.gb);
        break;
    case 134:
        decode_colskip(data, width, height, stride, &v->s.gb);
        break;
    default:
        break;
    }


    if (imode == 133 || imode == 132) {
        planep = data;
        planep[0] ^= invert;
        for (x = 1; x < width; x++)
            planep[x] ^= planep[x-1];
        for (y = 1; y < height; y++) {
            planep += stride;
            planep[0] ^= planep[-stride];
            for (x = 1; x < width; x++) {
                if (planep[x-1] != planep[x-stride]) planep[x] ^= invert;
                else planep[x] ^= planep[x-1];
            }
        }
    } else if (invert) {
        planep = data;
        for (x = 0; x < stride * height; x++)
            planep[x] = !planep[x];
    }
    return (imode << 1) + invert;
}
