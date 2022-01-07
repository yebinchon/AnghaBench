
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int table; } ;
struct TYPE_8__ {int n; int* table_mvx; int* table_mvy; TYPE_1__ vlc; } ;
struct TYPE_7__ {size_t mv_table_index; int gb; int mb_y; int mb_x; int avctx; } ;
typedef TYPE_2__ MpegEncContext ;
typedef TYPE_3__ MVTable ;


 int AV_LOG_ERROR ;
 int MV_VLC_BITS ;
 int av_log (int ,int ,char*,int ,int ) ;
 TYPE_3__* ff_mv_tables ;
 int get_bits (int *,int) ;
 int get_vlc2 (int *,int ,int ,int) ;

int ff_msmpeg4_decode_motion(MpegEncContext * s,
                                 int *mx_ptr, int *my_ptr)
{
    MVTable *mv;
    int code, mx, my;

    mv = &ff_mv_tables[s->mv_table_index];

    code = get_vlc2(&s->gb, mv->vlc.table, MV_VLC_BITS, 2);
    if (code < 0){
        av_log(s->avctx, AV_LOG_ERROR, "illegal MV code at %d %d\n", s->mb_x, s->mb_y);
        return -1;
    }
    if (code == mv->n) {
        mx = get_bits(&s->gb, 6);
        my = get_bits(&s->gb, 6);
    } else {
        mx = mv->table_mvx[code];
        my = mv->table_mvy[code];
    }

    mx += *mx_ptr - 32;
    my += *my_ptr - 32;

    if (mx <= -64)
        mx += 64;
    else if (mx >= 64)
        mx -= 64;

    if (my <= -64)
        my += 64;
    else if (my >= 64)
        my -= 64;
    *mx_ptr = mx;
    *my_ptr = my;
    return 0;
}
