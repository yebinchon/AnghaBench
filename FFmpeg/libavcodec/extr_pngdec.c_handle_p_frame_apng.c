
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_15__ {TYPE_1__* f; } ;
struct TYPE_14__ {int pix_fmt; } ;
struct TYPE_13__ {size_t** data; } ;
struct TYPE_12__ {scalar_t__ blend_op; int image_linesize; int height; scalar_t__ last_dispose_op; size_t last_y_offset; size_t last_h; int bpp; int last_x_offset; int last_w; size_t y_offset; size_t cur_h; size_t x_offset; int cur_w; int* palette; TYPE_8__ previous_picture; TYPE_8__ last_picture; } ;
struct TYPE_11__ {size_t** data; } ;
typedef TYPE_2__ PNGDecContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 scalar_t__ APNG_BLEND_OP_OVER ;
 scalar_t__ APNG_BLEND_OP_SOURCE ;
 scalar_t__ APNG_DISPOSE_OP_BACKGROUND ;
 scalar_t__ APNG_DISPOSE_OP_PREVIOUS ;
 int AVERROR (int ) ;
 int AVERROR_PATCHWELCOME ;



 int ENOMEM ;
 size_t FAST_DIV255 (size_t) ;
 int INT_MAX ;
 int av_assert0 (int) ;
 int av_free (size_t*) ;
 int av_get_pix_fmt_name (int) ;
 size_t* av_malloc_array (int,int) ;
 int avpriv_request_sample (TYPE_4__*,char*,...) ;
 int ff_thread_await_progress (TYPE_8__*,int ,int ) ;
 int ff_thread_report_progress (TYPE_8__*,int ,int ) ;
 int memcpy (size_t*,size_t*,int) ;
 int memset (size_t*,int ,int) ;

__attribute__((used)) static int handle_p_frame_apng(AVCodecContext *avctx, PNGDecContext *s,
                               AVFrame *p)
{
    size_t x, y;
    uint8_t *buffer;

    if (s->blend_op == APNG_BLEND_OP_OVER &&
        avctx->pix_fmt != 128 &&
        avctx->pix_fmt != 130 &&
        avctx->pix_fmt != 129) {
        avpriv_request_sample(avctx, "Blending with pixel format %s",
                              av_get_pix_fmt_name(avctx->pix_fmt));
        return AVERROR_PATCHWELCOME;
    }

    buffer = av_malloc_array(s->image_linesize, s->height);
    if (!buffer)
        return AVERROR(ENOMEM);



    if (s->last_dispose_op != APNG_DISPOSE_OP_PREVIOUS) {
        ff_thread_await_progress(&s->last_picture, INT_MAX, 0);
        memcpy(buffer, s->last_picture.f->data[0], s->image_linesize * s->height);

        if (s->last_dispose_op == APNG_DISPOSE_OP_BACKGROUND)
            for (y = s->last_y_offset; y < s->last_y_offset + s->last_h; ++y)
                memset(buffer + s->image_linesize * y + s->bpp * s->last_x_offset, 0, s->bpp * s->last_w);

        memcpy(s->previous_picture.f->data[0], buffer, s->image_linesize * s->height);
        ff_thread_report_progress(&s->previous_picture, INT_MAX, 0);
    } else {
        ff_thread_await_progress(&s->previous_picture, INT_MAX, 0);
        memcpy(buffer, s->previous_picture.f->data[0], s->image_linesize * s->height);
    }


    if (s->blend_op == APNG_BLEND_OP_SOURCE) {
        for (y = s->y_offset; y < s->y_offset + s->cur_h; ++y) {
            size_t row_start = s->image_linesize * y + s->bpp * s->x_offset;
            memcpy(buffer + row_start, p->data[0] + row_start, s->bpp * s->cur_w);
        }
    } else {
        for (y = s->y_offset; y < s->y_offset + s->cur_h; ++y) {
            uint8_t *foreground = p->data[0] + s->image_linesize * y + s->bpp * s->x_offset;
            uint8_t *background = buffer + s->image_linesize * y + s->bpp * s->x_offset;
            for (x = s->x_offset; x < s->x_offset + s->cur_w; ++x, foreground += s->bpp, background += s->bpp) {
                size_t b;
                uint8_t foreground_alpha, background_alpha, output_alpha;
                uint8_t output[10];





                switch (avctx->pix_fmt) {
                case 128:
                    foreground_alpha = foreground[3];
                    background_alpha = background[3];
                    break;

                case 130:
                    foreground_alpha = foreground[1];
                    background_alpha = background[1];
                    break;

                case 129:
                    foreground_alpha = s->palette[foreground[0]] >> 24;
                    background_alpha = s->palette[background[0]] >> 24;
                    break;
                }

                if (foreground_alpha == 0)
                    continue;

                if (foreground_alpha == 255) {
                    memcpy(background, foreground, s->bpp);
                    continue;
                }

                if (avctx->pix_fmt == 129) {

                    avpriv_request_sample(avctx, "Alpha blending palette samples");
                    background[0] = foreground[0];
                    continue;
                }

                output_alpha = foreground_alpha + FAST_DIV255((255 - foreground_alpha) * background_alpha);

                av_assert0(s->bpp <= 10);

                for (b = 0; b < s->bpp - 1; ++b) {
                    if (output_alpha == 0) {
                        output[b] = 0;
                    } else if (background_alpha == 255) {
                        output[b] = FAST_DIV255(foreground_alpha * foreground[b] + (255 - foreground_alpha) * background[b]);
                    } else {
                        output[b] = (255 * foreground_alpha * foreground[b] + (255 - foreground_alpha) * background_alpha * background[b]) / (255 * output_alpha);
                    }
                }
                output[b] = output_alpha;
                memcpy(background, output, s->bpp);
            }
        }
    }


    memcpy(p->data[0], buffer, s->image_linesize * s->height);
    av_free(buffer);

    return 0;
}
