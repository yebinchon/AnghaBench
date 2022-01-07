
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_8__ {int width; int height; int * linesize; int ** data; int format; } ;
struct TYPE_7__ {int flags; int nb_components; TYPE_1__* comp; int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_6__ {int depth; } ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef TYPE_3__ AVFrame ;


 int AV_CEIL_RSHIFT (int,int ) ;
 int AV_PIX_FMT_FLAG_PLANAR ;
 int av_assert0 (int) ;
 int av_memcpy_backptr (int *,int,int) ;
 TYPE_2__* av_pix_fmt_desc_get (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int const,int) ;

void ff_color_frame(AVFrame *frame, const int c[4])
{
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(frame->format);
    int p, y;

    av_assert0(desc->flags & AV_PIX_FMT_FLAG_PLANAR);

    for (p = 0; p<desc->nb_components; p++) {
        uint8_t *dst = frame->data[p];
        int is_chroma = p == 1 || p == 2;
        int bytes = is_chroma ? AV_CEIL_RSHIFT(frame->width, desc->log2_chroma_w) : frame->width;
        int height = is_chroma ? AV_CEIL_RSHIFT(frame->height, desc->log2_chroma_h) : frame->height;
        if (desc->comp[0].depth >= 9) {
            ((uint16_t*)dst)[0] = c[p];
            av_memcpy_backptr(dst + 2, 2, bytes - 2);
            dst += frame->linesize[p];
            for (y = 1; y < height; y++) {
                memcpy(dst, frame->data[p], 2*bytes);
                dst += frame->linesize[p];
            }
        } else {
            for (y = 0; y < height; y++) {
                memset(dst, c[p], bytes);
                dst += frame->linesize[p];
            }
        }
    }
}
