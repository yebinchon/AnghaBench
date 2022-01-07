
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int height; int * linesize; int ** data; int width; int format; } ;
struct TYPE_5__ {unsigned int name; int nb_components; int log2_chroma_h; } ;
typedef TYPE_1__ AVPixFmtDescriptor ;
typedef TYPE_2__ AVFrame ;
typedef int AVBPrint ;


 int AV_CEIL_RSHIFT (int,int ) ;
 unsigned int av_adler32_update (unsigned int,int *,int) ;
 int av_bprintf (int *,char*,...) ;
 scalar_t__ av_image_fill_linesizes (int*,int ,int ) ;
 TYPE_1__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static void video_frame_cksum(AVBPrint *bp, AVFrame *frame)
{
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(frame->format);
    int i, y;
    uint8_t *data;
    int linesize[5] = { 0 };

    av_bprintf(bp, ", %d x %d", frame->width, frame->height);
    if (!desc) {
        av_bprintf(bp, ", unknown");
        return;
    }
    if (av_image_fill_linesizes(linesize, frame->format, frame->width) < 0)
        return;
    av_bprintf(bp, ", %s", desc->name);
    for (i = 0; linesize[i]; i++) {
        unsigned cksum = 0;
        int h = frame->height;
        if ((i == 1 || i == 2) && desc->nb_components >= 3)
            h = AV_CEIL_RSHIFT(h, desc->log2_chroma_h);
        data = frame->data[i];
        for (y = 0; y < h; y++) {
            cksum = av_adler32_update(cksum, data, linesize[i]);
            data += frame->linesize[i];
        }
        av_bprintf(bp, ", 0x%08x", cksum);
    }
}
