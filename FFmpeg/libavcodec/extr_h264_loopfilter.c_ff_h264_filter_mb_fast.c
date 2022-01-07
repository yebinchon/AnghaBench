
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {TYPE_2__* pps; } ;
struct TYPE_9__ {int h264_loop_filter_strength; } ;
struct TYPE_12__ {int pixel_shift; TYPE_3__ ps; TYPE_1__ h264dsp; } ;
struct TYPE_10__ {scalar_t__ chroma_qp_diff; } ;
typedef int H264SliceContext ;
typedef TYPE_4__ H264Context ;


 int FRAME_MBAFF (TYPE_4__ const*) ;
 int av_assert2 (int) ;
 int ff_h264_filter_mb (TYPE_4__ const*,int *,int,int,int *,int *,int *,unsigned int,unsigned int) ;
 int h264_filter_mb_fast_internal (TYPE_4__ const*,int *,int,int,int *,int *,int *,unsigned int,unsigned int,int) ;

void ff_h264_filter_mb_fast(const H264Context *h, H264SliceContext *sl,
                            int mb_x, int mb_y, uint8_t *img_y,
                            uint8_t *img_cb, uint8_t *img_cr,
                            unsigned int linesize, unsigned int uvlinesize)
{
    av_assert2(!FRAME_MBAFF(h));
    if(!h->h264dsp.h264_loop_filter_strength || h->ps.pps->chroma_qp_diff) {
        ff_h264_filter_mb(h, sl, mb_x, mb_y, img_y, img_cb, img_cr, linesize, uvlinesize);
        return;
    }




    if(h->pixel_shift){
        h264_filter_mb_fast_internal(h, sl, mb_x, mb_y, img_y, img_cb, img_cr, linesize, uvlinesize, 1);
    }else{
        h264_filter_mb_fast_internal(h, sl, mb_x, mb_y, img_y, img_cb, img_cr, linesize, uvlinesize, 0);
    }

}
