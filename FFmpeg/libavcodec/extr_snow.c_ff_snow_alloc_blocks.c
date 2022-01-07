
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int b_width; int b_height; int block_max_depth; int block; TYPE_1__* avctx; } ;
struct TYPE_4__ {int height; int width; } ;
typedef TYPE_2__ SnowContext ;
typedef int BlockNode ;


 int AVERROR (int ) ;
 int AV_CEIL_RSHIFT (int ,int ) ;
 int ENOMEM ;
 int LOG2_MB_SIZE ;
 int av_free (int ) ;
 int av_mallocz_array (int,int) ;

int ff_snow_alloc_blocks(SnowContext *s){
    int w= AV_CEIL_RSHIFT(s->avctx->width, LOG2_MB_SIZE);
    int h= AV_CEIL_RSHIFT(s->avctx->height, LOG2_MB_SIZE);

    s->b_width = w;
    s->b_height= h;

    av_free(s->block);
    s->block= av_mallocz_array(w * h, sizeof(BlockNode) << (s->block_max_depth*2));
    if (!s->block)
        return AVERROR(ENOMEM);

    return 0;
}
