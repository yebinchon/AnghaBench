
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* block_index; int b8_stride; int mb_y; int mb_x; int mb_stride; int mb_height; } ;
typedef TYPE_1__ MpegEncContext ;



__attribute__((used)) static void init_block_index(MpegEncContext *s){
    s->block_index[0]= s->b8_stride*(s->mb_y*2 ) + s->mb_x*2;
    s->block_index[1]= s->b8_stride*(s->mb_y*2 ) + 1 + s->mb_x*2;
    s->block_index[2]= s->b8_stride*(s->mb_y*2 + 1) + s->mb_x*2;
    s->block_index[3]= s->b8_stride*(s->mb_y*2 + 1) + 1 + s->mb_x*2;
    s->block_index[4]= s->mb_stride*(s->mb_y + 1) + s->b8_stride*s->mb_height*2 + s->mb_x;
    s->block_index[5]= s->mb_stride*(s->mb_y + s->mb_height + 2) + s->b8_stride*s->mb_height*2 + s->mb_x;
}
