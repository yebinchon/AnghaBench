
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int type; int* color; int ref; scalar_t__ my; scalar_t__ mx; } ;
struct TYPE_9__ {int b_width; int block_max_depth; int b_height; TYPE_2__ const* block; } ;
typedef TYPE_1__ SnowContext ;
typedef TYPE_2__ const BlockNode ;


 int BLOCK_INTRA ;
 int FFABS (int) ;
 int av_log2 (int) ;
 TYPE_2__ const null_block ;
 int pred_mv (TYPE_1__*,int*,int*,int,TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*) ;

__attribute__((used)) static inline int get_block_bits(SnowContext *s, int x, int y, int w){
    const int b_stride = s->b_width << s->block_max_depth;
    const int b_height = s->b_height<< s->block_max_depth;
    int index= x + y*b_stride;
    const BlockNode *b = &s->block[index];
    const BlockNode *left = x ? &s->block[index-1] : &null_block;
    const BlockNode *top = y ? &s->block[index-b_stride] : &null_block;
    const BlockNode *tl = y && x ? &s->block[index-b_stride-1] : left;
    const BlockNode *tr = y && x+w<b_stride ? &s->block[index-b_stride+w] : tl;
    int dmx, dmy;



    if(x<0 || x>=b_stride || y>=b_height)
        return 0;
    if(b->type & BLOCK_INTRA){
        return 3+2*( av_log2(2*FFABS(left->color[0] - b->color[0]))
                   + av_log2(2*FFABS(left->color[1] - b->color[1]))
                   + av_log2(2*FFABS(left->color[2] - b->color[2])));
    }else{
        pred_mv(s, &dmx, &dmy, b->ref, left, top, tr);
        dmx-= b->mx;
        dmy-= b->my;
        return 2*(1 + av_log2(2*FFABS(dmx))
                    + av_log2(2*FFABS(dmy))
                    + av_log2(2*b->ref));
    }
}
