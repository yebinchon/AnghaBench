
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int table; } ;
struct TYPE_4__ {int gb; } ;
typedef TYPE_1__ MpegEncContext ;


 int MV_VLC_BITS ;
 TYPE_3__ ff_mv_vlc ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;
 int sign_extend (int,int) ;

__attribute__((used)) static int mpeg_decode_motion(MpegEncContext *s, int fcode, int pred)
{
    int code, sign, val, shift;

    code = get_vlc2(&s->gb, ff_mv_vlc.table, MV_VLC_BITS, 2);
    if (code == 0)
        return pred;
    if (code < 0)
        return 0xffff;

    sign = get_bits1(&s->gb);
    shift = fcode - 1;
    val = code;
    if (shift) {
        val = (val - 1) << shift;
        val |= get_bits(&s->gb, shift);
        val++;
    }
    if (sign)
        val = -val;
    val += pred;


    return sign_extend(val, 5 + shift);
}
