
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int width; int height; } ;
struct TYPE_10__ {int key_frame; int** data; int palette_has_changed; int* linesize; int pict_type; } ;
struct TYPE_9__ {int* data; int size; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ AVPALETTE_SIZE ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 int av_log (TYPE_3__*,int ,char*) ;
 int avpriv_cga_font ;
 int ff_cga_palette ;
 int ff_draw_pc_font (int*,int,int ,int,unsigned int,unsigned int,unsigned int) ;
 int ff_get_buffer (TYPE_3__*,TYPE_2__*,int ) ;
 int memcpy (int*,int ,int) ;
 int memset (int*,int ,scalar_t__) ;

__attribute__((used)) static int tmv_decode_frame(AVCodecContext *avctx, void *data,
                            int *got_frame, AVPacket *avpkt)
{
    AVFrame *frame = data;
    const uint8_t *src = avpkt->data;
    uint8_t *dst;
    unsigned char_cols = avctx->width >> 3;
    unsigned char_rows = avctx->height >> 3;
    unsigned x, y, fg, bg, c;
    int ret;

    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    if (avpkt->size < 2*char_rows*char_cols) {
        av_log(avctx, AV_LOG_ERROR,
               "Input buffer too small, truncated sample?\n");
        *got_frame = 0;
        return AVERROR_INVALIDDATA;
    }

    frame->pict_type = AV_PICTURE_TYPE_I;
    frame->key_frame = 1;
    dst = frame->data[0];

    frame->palette_has_changed = 1;
    memcpy(frame->data[1], ff_cga_palette, 16 * 4);
    memset(frame->data[1] + 16 * 4, 0, AVPALETTE_SIZE - 16 * 4);

    for (y = 0; y < char_rows; y++) {
        for (x = 0; x < char_cols; x++) {
            c = *src++;
            bg = *src >> 4;
            fg = *src++ & 0xF;
            ff_draw_pc_font(dst + x * 8, frame->linesize[0],
                            avpriv_cga_font, 8, c, fg, bg);
        }
        dst += frame->linesize[0] * 8;
    }

    *got_frame = 1;

    return avpkt->size;
}
