
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int channels_for_cur_subframe; int* channel_indexes_for_cur_subframe; int subframe_len; float** windows; TYPE_2__* channel; TYPE_1__* fdsp; } ;
typedef TYPE_3__ WMAProDecodeCtx ;
struct TYPE_6__ {int prev_block_len; float* coeffs; } ;
struct TYPE_5__ {int (* vector_fmul_window ) (float*,float*,float*,float const*,int) ;} ;


 size_t WMAPRO_BLOCK_MIN_BITS ;
 size_t av_log2 (int) ;
 int stub1 (float*,float*,float*,float const*,int) ;

__attribute__((used)) static void wmapro_window(WMAProDecodeCtx *s)
{
    int i;
    for (i = 0; i < s->channels_for_cur_subframe; i++) {
        int c = s->channel_indexes_for_cur_subframe[i];
        const float* window;
        int winlen = s->channel[c].prev_block_len;
        float* start = s->channel[c].coeffs - (winlen >> 1);

        if (s->subframe_len < winlen) {
            start += (winlen - s->subframe_len) >> 1;
            winlen = s->subframe_len;
        }

        window = s->windows[av_log2(winlen) - WMAPRO_BLOCK_MIN_BITS];

        winlen >>= 1;

        s->fdsp->vector_fmul_window(start, start, start + winlen,
                                   window, winlen);

        s->channel[c].prev_block_len = s->subframe_len;
    }
}
