
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int slice_buffer ;
struct TYPE_6__ {int const qbias; int qlog; } ;
struct TYPE_5__ {int width; int stride_line; int buf_x_offset; scalar_t__ buf_y_offset; int qlog; } ;
typedef TYPE_1__ SubBand ;
typedef TYPE_2__ SnowContext ;
typedef int IDWTELEM ;


 int LOSSLESS_QLOG ;
 int const QBIAS_SHIFT ;
 int QEXPSHIFT ;
 int QROOT ;
 int const QSHIFT ;
 int av_clip (int ,int ,int) ;
 int const* ff_qexp ;
 int* slice_buffer_get_line (int *,scalar_t__) ;

__attribute__((used)) static void dequantize_slice_buffered(SnowContext *s, slice_buffer * sb, SubBand *b, IDWTELEM *src, int stride, int start_y, int end_y){
    const int w= b->width;
    const int qlog= av_clip(s->qlog + b->qlog, 0, QROOT*16);
    const int qmul= ff_qexp[qlog&(QROOT-1)]<<(qlog>>QSHIFT);
    const int qadd= (s->qbias*qmul)>>QBIAS_SHIFT;
    int x,y;

    if(s->qlog == LOSSLESS_QLOG) return;

    for(y=start_y; y<end_y; y++){

        IDWTELEM * line = slice_buffer_get_line(sb, (y * b->stride_line) + b->buf_y_offset) + b->buf_x_offset;
        for(x=0; x<w; x++){
            int i= line[x];
            if(i<0){
                line[x]= -((-i*(unsigned)qmul + qadd)>>(QEXPSHIFT));
            }else if(i>0){
                line[x]= (( i*(unsigned)qmul + qadd)>>(QEXPSHIFT));
            }
        }
    }
}
