
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uvlinesize; int linesize; int b8_stride; int mb_height; int mb_width; int mb_stride; int out_format; int chroma_y_shift; int chroma_x_shift; int sc; int me; int avctx; } ;
typedef int Picture ;
typedef TYPE_1__ MpegEncContext ;


 int ff_alloc_picture (int ,int *,int *,int *,int,int ,int ,int ,int ,int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static int alloc_picture(MpegEncContext *s, Picture *pic, int shared)
{
    return ff_alloc_picture(s->avctx, pic, &s->me, &s->sc, shared, 0,
                            s->chroma_x_shift, s->chroma_y_shift, s->out_format,
                            s->mb_stride, s->mb_width, s->mb_height, s->b8_stride,
                            &s->linesize, &s->uvlinesize);
}
