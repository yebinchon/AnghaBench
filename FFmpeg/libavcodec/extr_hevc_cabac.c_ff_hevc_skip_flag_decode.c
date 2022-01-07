
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* sps; } ;
struct TYPE_9__ {int skip_flag; TYPE_3__* HEVClc; TYPE_2__ ps; } ;
struct TYPE_8__ {scalar_t__ ctb_up_flag; scalar_t__ ctb_left_flag; } ;
struct TYPE_6__ {int min_cb_width; int log2_ctb_size; } ;
typedef TYPE_4__ HEVCContext ;


 int GET_CABAC (scalar_t__) ;
 int SAMPLE_CTB (int ,int,int) ;
 size_t SKIP_FLAG ;
 int av_mod_uintp2 (int,int ) ;
 scalar_t__* elem_offset ;

int ff_hevc_skip_flag_decode(HEVCContext *s, int x0, int y0, int x_cb, int y_cb)
{
    int min_cb_width = s->ps.sps->min_cb_width;
    int inc = 0;
    int x0b = av_mod_uintp2(x0, s->ps.sps->log2_ctb_size);
    int y0b = av_mod_uintp2(y0, s->ps.sps->log2_ctb_size);

    if (s->HEVClc->ctb_left_flag || x0b)
        inc = !!SAMPLE_CTB(s->skip_flag, x_cb - 1, y_cb);
    if (s->HEVClc->ctb_up_flag || y0b)
        inc += !!SAMPLE_CTB(s->skip_flag, x_cb, y_cb - 1);

    return GET_CABAC(elem_offset[SKIP_FLAG] + inc);
}
