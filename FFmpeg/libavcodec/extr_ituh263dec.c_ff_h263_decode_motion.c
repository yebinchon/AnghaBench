
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int table; } ;
struct TYPE_4__ {int h263_long_vectors; int gb; } ;
typedef TYPE_1__ MpegEncContext ;


 int MV_VLC_BITS ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;
 TYPE_2__ mv_vlc ;
 int sign_extend (int,int) ;

int ff_h263_decode_motion(MpegEncContext * s, int pred, int f_code)
{
    int code, val, sign, shift;
    code = get_vlc2(&s->gb, mv_vlc.table, MV_VLC_BITS, 2);

    if (code == 0)
        return pred;
    if (code < 0)
        return 0xffff;

    sign = get_bits1(&s->gb);
    shift = f_code - 1;
    val = code;
    if (shift) {
        val = (val - 1) << shift;
        val |= get_bits(&s->gb, shift);
        val++;
    }
    if (sign)
        val = -val;
    val += pred;


    if (!s->h263_long_vectors) {
        val = sign_extend(val, 5 + f_code);
    } else {

        if (pred < -31 && val < -63)
            val += 64;
        if (pred > 32 && val > 63)
            val -= 64;

    }
    return val;
}
