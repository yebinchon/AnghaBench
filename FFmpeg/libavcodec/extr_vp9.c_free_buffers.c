
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int active_tile_cols; TYPE_1__* td; int * intra_pred_data; } ;
typedef TYPE_2__ VP9Context ;
struct TYPE_4__ {int block_base; int b_base; } ;


 int av_freep (int *) ;

__attribute__((used)) static void free_buffers(VP9Context *s)
{
    int i;

    av_freep(&s->intra_pred_data[0]);
    for (i = 0; i < s->active_tile_cols; i++) {
        av_freep(&s->td[i].b_base);
        av_freep(&s->td[i].block_base);
    }
}
