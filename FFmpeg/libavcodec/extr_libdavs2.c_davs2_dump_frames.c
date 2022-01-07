
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_17__ {int output_bit_depth; int frame_rate; int height; int width; } ;
typedef TYPE_3__ davs2_seq_info_t ;
struct TYPE_18__ {int bytes_per_sample; int type; int* widths; int* lines; int* strides; scalar_t__* planes; } ;
typedef TYPE_4__ davs2_picture_t ;
struct TYPE_21__ {int pix_fmt; int framerate; int height; int width; TYPE_5__* priv_data; } ;
struct TYPE_20__ {int* linesize; int format; int pts; int height; int width; scalar_t__* data; TYPE_13__** buf; int pict_type; } ;
struct TYPE_16__ {int pts; } ;
struct TYPE_15__ {int height; int width; } ;
struct TYPE_19__ {TYPE_2__ out_frame; TYPE_1__ headerset; } ;
struct TYPE_14__ {scalar_t__ data; } ;
typedef TYPE_5__ DAVS2Context ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_B ;
 int AV_PICTURE_TYPE_I ;
 int AV_PICTURE_TYPE_P ;
 int AV_PICTURE_TYPE_S ;
 int AV_PIX_FMT_YUV420P ;
 int AV_PIX_FMT_YUV420P10 ;
 int DAVS2_GOT_HEADER ;






 int ENOMEM ;
 TYPE_13__* av_buffer_alloc (int) ;
 int av_d2q (int ,int) ;
 int av_log (TYPE_7__*,int ,char*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int davs2_dump_frames(AVCodecContext *avctx, davs2_picture_t *pic, int *got_frame,
                             davs2_seq_info_t *headerset, int ret_type, AVFrame *frame)
{
    DAVS2Context *cad = avctx->priv_data;
    int bytes_per_sample = pic->bytes_per_sample;
    int plane = 0;
    int line = 0;

    if (!headerset) {
        *got_frame = 0;
        return 0;
    }

    if (!pic || ret_type == DAVS2_GOT_HEADER) {
        avctx->width = headerset->width;
        avctx->height = headerset->height;
        avctx->pix_fmt = headerset->output_bit_depth == 10 ?
                           AV_PIX_FMT_YUV420P10 : AV_PIX_FMT_YUV420P;

        avctx->framerate = av_d2q(headerset->frame_rate,4096);
        *got_frame = 0;
        return 0;
    }

    switch (pic->type) {
    case 130:
    case 131:
        frame->pict_type = AV_PICTURE_TYPE_I;
        break;
    case 129:
    case 128:
        frame->pict_type = AV_PICTURE_TYPE_P;
        break;
    case 133:
        frame->pict_type = AV_PICTURE_TYPE_B;
        break;
    case 132:
        frame->pict_type = AV_PICTURE_TYPE_S;
        break;
    default:
        av_log(avctx, AV_LOG_ERROR, "Decoder error: unknown frame type\n");
        return AVERROR_EXTERNAL;
    }

    for (plane = 0; plane < 3; ++plane) {
        int size_line = pic->widths[plane] * bytes_per_sample;
        frame->buf[plane] = av_buffer_alloc(size_line * pic->lines[plane]);

        if (!frame->buf[plane]){
            av_log(avctx, AV_LOG_ERROR, "Decoder error: allocation failure, can't dump frames.\n");
            return AVERROR(ENOMEM);
        }

        frame->data[plane] = frame->buf[plane]->data;
        frame->linesize[plane] = size_line;

        for (line = 0; line < pic->lines[plane]; ++line)
            memcpy(frame->data[plane] + line * size_line,
                   pic->planes[plane] + line * pic->strides[plane],
                   pic->widths[plane] * bytes_per_sample);
    }

    frame->width = cad->headerset.width;
    frame->height = cad->headerset.height;
    frame->pts = cad->out_frame.pts;
    frame->format = avctx->pix_fmt;

    *got_frame = 1;
    return 0;
}
