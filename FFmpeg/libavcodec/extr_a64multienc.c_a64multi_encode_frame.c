
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {int* mc_charmap; int* mc_colram; int* mc_charset; int* mc_meta_charset; int* mc_best_cb; int mc_use_5col; int mc_lifetime; int mc_frame_counter; scalar_t__ next_pts; int randctx; } ;
struct TYPE_15__ {scalar_t__ extradata; int width; int height; TYPE_4__* priv_data; } ;
struct TYPE_14__ {scalar_t__ pts; } ;
struct TYPE_13__ {int* data; scalar_t__ pts; scalar_t__ dts; int size; int flags; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;
typedef TYPE_4__ A64Context ;


 scalar_t__ AV_NOPTS_VALUE ;
 int AV_PKT_FLAG_KEY ;
 int AV_WB32 (scalar_t__,int) ;
 int C64XRES ;
 int C64YRES ;
 int CHARSET_CHARS ;
 scalar_t__ CROP_SCREENS ;
 int FFMIN (int ,int) ;
 int INTERLACED ;
 int a64_compress_colram (int*,int*,int*) ;
 int av_assert0 (int) ;
 int avpriv_do_elbg (int*,int,int,int*,int ,int,int*,int *) ;
 int avpriv_init_elbg (int*,int,int,int*,int ,int,int*,int *) ;
 int ff_alloc_packet2 (TYPE_3__*,TYPE_1__*,int,int ) ;
 int memcpy (int*,int*,int) ;
 int render_charset (TYPE_3__*,int*,int*) ;
 int to_meta_with_crop (TYPE_3__*,TYPE_2__ const*,int*) ;

__attribute__((used)) static int a64multi_encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                                 const AVFrame *p, int *got_packet)
{
    A64Context *c = avctx->priv_data;

    int frame;
    int x, y;
    int b_height;
    int b_width;

    int req_size, ret;
    uint8_t *buf = ((void*)0);

    int *charmap = c->mc_charmap;
    uint8_t *colram = c->mc_colram;
    uint8_t *charset = c->mc_charset;
    int *meta = c->mc_meta_charset;
    int *best_cb = c->mc_best_cb;

    int charset_size = 0x800 * (INTERLACED + 1);
    int colram_size = 0x100 * c->mc_use_5col;
    int screen_size;

    if(CROP_SCREENS) {
        b_height = FFMIN(avctx->height,C64YRES) >> 3;
        b_width = FFMIN(avctx->width ,C64XRES) >> 3;
        screen_size = b_width * b_height;
    } else {
        b_height = C64YRES >> 3;
        b_width = C64XRES >> 3;
        screen_size = 0x400;
    }


    if (!p) {

        if (!c->mc_lifetime) return 0;

        if (!c->mc_frame_counter) {
            c->mc_lifetime = 0;
        }

        else c->mc_lifetime = c->mc_frame_counter;

    } else {

        if (c->mc_frame_counter < c->mc_lifetime) {
            to_meta_with_crop(avctx, p, meta + 32000 * c->mc_frame_counter);
            c->mc_frame_counter++;
            if (c->next_pts == AV_NOPTS_VALUE)
                c->next_pts = p->pts;

            return 0;
        }
    }


    if (c->mc_frame_counter == c->mc_lifetime) {
        req_size = 0;

        if (c->mc_lifetime) {
            int alloc_size = charset_size + c->mc_lifetime*(screen_size + colram_size);
            if ((ret = ff_alloc_packet2(avctx, pkt, alloc_size, 0)) < 0)
                return ret;
            buf = pkt->data;


            ret = avpriv_init_elbg(meta, 32, 1000 * c->mc_lifetime, best_cb,
                               CHARSET_CHARS, 50, charmap, &c->randctx);
            if (ret < 0)
                return ret;
            ret = avpriv_do_elbg(meta, 32, 1000 * c->mc_lifetime, best_cb,
                             CHARSET_CHARS, 50, charmap, &c->randctx);
            if (ret < 0)
                return ret;


            render_charset(avctx, charset, colram);


            memcpy(buf, charset, charset_size);


            buf += charset_size;
            req_size += charset_size;
        }


        for (frame = 0; frame < c->mc_lifetime; frame++) {

            for (y = 0; y < b_height; y++) {
                for (x = 0; x < b_width; x++) {
                    buf[y * b_width + x] = charmap[y * b_width + x];
                }
            }

            buf += screen_size;
            req_size += screen_size;


            if (c->mc_use_5col) {
                a64_compress_colram(buf, charmap, colram);

                buf += colram_size;
                req_size += colram_size;
            }


            charmap += 1000;
        }

        AV_WB32(avctx->extradata + 4, c->mc_frame_counter);
        AV_WB32(avctx->extradata + 8, charset_size);
        AV_WB32(avctx->extradata + 12, screen_size + colram_size);


        c->mc_frame_counter = 0;

        pkt->pts = pkt->dts = c->next_pts;
        c->next_pts = AV_NOPTS_VALUE;

        av_assert0(pkt->size >= req_size);
        pkt->size = req_size;
        pkt->flags |= AV_PKT_FLAG_KEY;
        *got_packet = !!req_size;
    }
    return 0;
}
