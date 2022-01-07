
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int width; int height; TYPE_2__* last_frame; TYPE_1__* current_frame; int avctx; } ;
struct TYPE_6__ {int* linesize; scalar_t__* data; } ;
struct TYPE_5__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_3__ RoqContext ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,...) ;
 int block_copy (scalar_t__,scalar_t__,int,int,int) ;

__attribute__((used)) static inline void apply_motion_generic(RoqContext *ri, int x, int y, int deltax,
                                        int deltay, int sz)
{
    int mx, my, cp;

    mx = x + deltax;
    my = y + deltay;


    if ((mx < 0) || (mx > ri->width - sz) ||
        (my < 0) || (my > ri->height - sz)) {
        av_log(ri->avctx, AV_LOG_ERROR, "motion vector out of bounds: MV = (%d, %d), boundaries = (0, 0, %d, %d)\n",
            mx, my, ri->width, ri->height);
        return;
    }

    if (!ri->last_frame->data[0]) {
        av_log(ri->avctx, AV_LOG_ERROR, "Invalid decode type. Invalid header?\n");
        return;
    }

    for(cp = 0; cp < 3; cp++) {
        int outstride = ri->current_frame->linesize[cp];
        int instride = ri->last_frame ->linesize[cp];
        block_copy(ri->current_frame->data[cp] + y*outstride + x,
                   ri->last_frame->data[cp] + my*instride + mx,
                   outstride, instride, sz);
    }
}
