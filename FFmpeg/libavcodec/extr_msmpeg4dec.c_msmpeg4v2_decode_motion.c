
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int table; } ;
struct TYPE_5__ {int gb; int mb_y; int mb_x; } ;
typedef TYPE_1__ MpegEncContext ;


 int V2_MV_VLC_BITS ;
 int ff_dlog (TYPE_1__*,char*,int,int ,int ,int) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;
 TYPE_2__ v2_mv_vlc ;

__attribute__((used)) static int msmpeg4v2_decode_motion(MpegEncContext * s, int pred, int f_code)
{
    int code, val, sign, shift;

    code = get_vlc2(&s->gb, v2_mv_vlc.table, V2_MV_VLC_BITS, 2);
    ff_dlog(s, "MV code %d at %d %d pred: %d\n", code, s->mb_x,s->mb_y, pred);
    if (code < 0)
        return 0xffff;

    if (code == 0)
        return pred;
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
    if (val <= -64)
        val += 64;
    else if (val >= 64)
        val -= 64;

    return val;
}
