
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* f; } ;
struct TYPE_6__ {int height; int last_slice_end; int chroma_y_shift; TYPE_5__ current_frame; TYPE_3__* avctx; scalar_t__ flipped_image; } ;
typedef TYPE_1__ Vp3DecodeContext ;
struct TYPE_8__ {int* linesize; } ;
struct TYPE_7__ {int active_thread_type; int (* draw_horiz_band ) (TYPE_3__*,TYPE_4__*,int*,int,int,int) ;} ;


 int AV_NUM_DATA_POINTERS ;
 int FF_THREAD_FRAME ;
 scalar_t__ HAVE_THREADS ;
 int INT_MAX ;
 int emms_c () ;
 int ff_thread_report_progress (TYPE_5__*,int,int ) ;
 int stub1 (TYPE_3__*,TYPE_4__*,int*,int,int,int) ;

__attribute__((used)) static void vp3_draw_horiz_band(Vp3DecodeContext *s, int y)
{
    int h, cy, i;
    int offset[AV_NUM_DATA_POINTERS];

    if (HAVE_THREADS && s->avctx->active_thread_type & FF_THREAD_FRAME) {
        int y_flipped = s->flipped_image ? s->height - y : y;




        ff_thread_report_progress(&s->current_frame,
                                  y_flipped == s->height ? INT_MAX
                                                         : y_flipped - 1,
                                  0);
    }

    if (!s->avctx->draw_horiz_band)
        return;

    h = y - s->last_slice_end;
    s->last_slice_end = y;
    y -= h;

    if (!s->flipped_image)
        y = s->height - y - h;

    cy = y >> s->chroma_y_shift;
    offset[0] = s->current_frame.f->linesize[0] * y;
    offset[1] = s->current_frame.f->linesize[1] * cy;
    offset[2] = s->current_frame.f->linesize[2] * cy;
    for (i = 3; i < AV_NUM_DATA_POINTERS; i++)
        offset[i] = 0;

    emms_c();
    s->avctx->draw_horiz_band(s->avctx, s->current_frame.f, offset, y, 3, h);
}
