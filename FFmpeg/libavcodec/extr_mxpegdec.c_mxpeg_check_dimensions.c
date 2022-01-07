
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__* linesize; scalar_t__* data; } ;
struct TYPE_10__ {int width; int height; int avctx; TYPE_1__* picture_ptr; } ;
struct TYPE_9__ {int mb_width; int mb_height; } ;
struct TYPE_8__ {scalar_t__* linesize; int * data; } ;
typedef TYPE_2__ MXpegDecodeContext ;
typedef TYPE_3__ MJpegDecodeContext ;
typedef TYPE_4__ AVFrame ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int MAX_COMPONENTS ;
 int av_log (int ,int ,char*) ;

__attribute__((used)) static int mxpeg_check_dimensions(MXpegDecodeContext *s, MJpegDecodeContext *jpg,
                                  AVFrame *reference_ptr)
{
    if ((jpg->width + 0x0F)>>4 != s->mb_width ||
        (jpg->height + 0x0F)>>4 != s->mb_height) {
        av_log(jpg->avctx, AV_LOG_ERROR,
               "Picture dimensions stored in SOF and MXM mismatch\n");
        return AVERROR(EINVAL);
    }

    if (reference_ptr->data[0]) {
        int i;
        for (i = 0; i < MAX_COMPONENTS; ++i) {
            if ( (!reference_ptr->data[i] ^ !jpg->picture_ptr->data[i]) ||
                 reference_ptr->linesize[i] != jpg->picture_ptr->linesize[i]) {
                av_log(jpg->avctx, AV_LOG_ERROR,
                       "Dimensions of current and reference picture mismatch\n");
                return AVERROR(EINVAL);
            }
        }
    }

    return 0;
}
