
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
typedef int cavs_vector ;
struct TYPE_3__ {int mb_width; int mb_height; void* block; void* col_type_base; void* col_mv; void* top_border_v; void* top_border_u; void* top_border_y; void* top_pred_Y; void** top_mv; void* top_qp; } ;
typedef TYPE_1__ AVSContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_freep (void**) ;
 void* av_mallocz (int) ;
 void* av_mallocz_array (int,int) ;

int ff_cavs_init_top_lines(AVSContext *h)
{

    h->top_qp = av_mallocz(h->mb_width);
    h->top_mv[0] = av_mallocz_array(h->mb_width * 2 + 1, sizeof(cavs_vector));
    h->top_mv[1] = av_mallocz_array(h->mb_width * 2 + 1, sizeof(cavs_vector));
    h->top_pred_Y = av_mallocz_array(h->mb_width * 2, sizeof(*h->top_pred_Y));
    h->top_border_y = av_mallocz_array(h->mb_width + 1, 16);
    h->top_border_u = av_mallocz_array(h->mb_width, 10);
    h->top_border_v = av_mallocz_array(h->mb_width, 10);


    h->col_mv = av_mallocz_array(h->mb_width * h->mb_height,
                                        4 * sizeof(cavs_vector));
    h->col_type_base = av_mallocz(h->mb_width * h->mb_height);
    h->block = av_mallocz(64 * sizeof(int16_t));

    if (!h->top_qp || !h->top_mv[0] || !h->top_mv[1] || !h->top_pred_Y ||
        !h->top_border_y || !h->top_border_u || !h->top_border_v ||
        !h->col_mv || !h->col_type_base || !h->block) {
        av_freep(&h->top_qp);
        av_freep(&h->top_mv[0]);
        av_freep(&h->top_mv[1]);
        av_freep(&h->top_pred_Y);
        av_freep(&h->top_border_y);
        av_freep(&h->top_border_u);
        av_freep(&h->top_border_v);
        av_freep(&h->col_mv);
        av_freep(&h->col_type_base);
        av_freep(&h->block);
        return AVERROR(ENOMEM);
    }
    return 0;
}
