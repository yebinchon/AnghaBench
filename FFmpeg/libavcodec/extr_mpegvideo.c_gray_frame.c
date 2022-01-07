
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int* linesize; int width; scalar_t__* data; int format; } ;
typedef TYPE_1__ AVFrame ;


 int AV_CEIL_RSHIFT (int,int) ;
 int av_pix_fmt_get_chroma_sub_sample (int ,int*,int*) ;
 int memset (scalar_t__,int,int) ;

__attribute__((used)) static void gray_frame(AVFrame *frame)
{
    int i, h_chroma_shift, v_chroma_shift;

    av_pix_fmt_get_chroma_sub_sample(frame->format, &h_chroma_shift, &v_chroma_shift);

    for(i=0; i<frame->height; i++)
        memset(frame->data[0] + frame->linesize[0]*i, 0x80, frame->width);
    for(i=0; i<AV_CEIL_RSHIFT(frame->height, v_chroma_shift); i++) {
        memset(frame->data[1] + frame->linesize[1]*i,
               0x80, AV_CEIL_RSHIFT(frame->width, h_chroma_shift));
        memset(frame->data[2] + frame->linesize[2]*i,
               0x80, AV_CEIL_RSHIFT(frame->width, h_chroma_shift));
    }
}
