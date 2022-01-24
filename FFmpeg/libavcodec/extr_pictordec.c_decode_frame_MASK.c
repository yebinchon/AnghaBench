#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_14__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_31__ {int width; int height; int /*<<< orphan*/  pix_fmt; TYPE_1__* priv_data; } ;
struct TYPE_30__ {int** data; int* linesize; int palette_has_changed; int /*<<< orphan*/  pict_type; } ;
struct TYPE_29__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_27__ {int* buffer; } ;
struct TYPE_28__ {int width; int height; int nb_planes; TYPE_14__ g; } ;
typedef  TYPE_1__ PicContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int AVPALETTE_SIZE ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PIX_FMT_PAL8 ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC1 (int,int,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 int FUNC3 (TYPE_14__*) ; 
 int FUNC4 (TYPE_14__*) ; 
 int FUNC5 (TYPE_14__*) ; 
 int FUNC6 (TYPE_14__*) ; 
 int FUNC7 (TYPE_14__*) ; 
 int FUNC8 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_14__*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_14__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_14__*,int) ; 
 int FUNC13 (TYPE_14__*) ; 
 size_t** cga_mode45_index ; 
 int* ff_cga_palette ; 
 int* ff_ega_palette ; 
 int FUNC14 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC17 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,TYPE_3__*,int,int,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,TYPE_3__*,int,int,int*,int*) ; 

__attribute__((used)) static int FUNC20(AVCodecContext *avctx,
                        void *data, int *got_frame,
                        AVPacket *avpkt)
{
    PicContext *s = avctx->priv_data;
    AVFrame *frame = data;
    uint32_t *palette;
    int bits_per_plane, bpp, etype, esize, npal, pos_after_pal;
    int i, x, y, plane, tmp, ret, val;

    FUNC9(&s->g, avpkt->data, avpkt->size);

    if (FUNC5(&s->g) < 11)
        return AVERROR_INVALIDDATA;

    if (FUNC8(&s->g) != 0x1234)
        return AVERROR_INVALIDDATA;

    s->width       = FUNC8(&s->g);
    s->height      = FUNC8(&s->g);
    FUNC12(&s->g, 4);
    tmp            = FUNC6(&s->g);
    bits_per_plane = tmp & 0xF;
    s->nb_planes   = (tmp >> 4) + 1;
    bpp            = bits_per_plane * s->nb_planes;
    if (bits_per_plane > 8 || bpp < 1 || bpp > 32) {
        FUNC2(avctx, "Unsupported bit depth");
        return AVERROR_PATCHWELCOME;
    }

    if (FUNC10(&s->g) == 0xFF || bpp == 1 || bpp == 4 || bpp == 8) {
        FUNC12(&s->g, 2);
        etype = FUNC7(&s->g);
        esize = FUNC7(&s->g);
        if (FUNC5(&s->g) < esize)
            return AVERROR_INVALIDDATA;
    } else {
        etype = -1;
        esize = 0;
    }

    avctx->pix_fmt = AV_PIX_FMT_PAL8;

    if (FUNC1(s->width, s->height, 0, avctx) < 0)
        return -1;
    if (s->width != avctx->width || s->height != avctx->height) {
        ret = FUNC15(avctx, s->width, s->height);
        if (ret < 0)
            return ret;
    }

    if ((ret = FUNC14(avctx, frame, 0)) < 0)
        return ret;
    FUNC17(frame->data[0], 0, s->height * frame->linesize[0]);
    frame->pict_type           = AV_PICTURE_TYPE_I;
    frame->palette_has_changed = 1;

    pos_after_pal = FUNC13(&s->g) + esize;
    palette = (uint32_t*)frame->data[1];
    if (etype == 1 && esize > 1 && FUNC10(&s->g) < 6) {
        int idx = FUNC4(&s->g);
        npal = 4;
        for (i = 0; i < npal; i++)
            palette[i] = ff_cga_palette[ cga_mode45_index[idx][i] ];
    } else if (etype == 2) {
        npal = FUNC0(esize, 16);
        for (i = 0; i < npal; i++) {
            int pal_idx = FUNC4(&s->g);
            palette[i]  = ff_cga_palette[FUNC0(pal_idx, 15)];
        }
    } else if (etype == 3) {
        npal = FUNC0(esize, 16);
        for (i = 0; i < npal; i++) {
            int pal_idx = FUNC4(&s->g);
            palette[i]  = ff_ega_palette[FUNC0(pal_idx, 63)];
        }
    } else if (etype == 4 || etype == 5) {
        npal = FUNC0(esize / 3, 256);
        for (i = 0; i < npal; i++) {
            palette[i] = FUNC3(&s->g) << 2;
            palette[i] |= 0xFFU << 24 | palette[i] >> 6 & 0x30303;
        }
    } else {
        if (bpp == 1) {
            npal = 2;
            palette[0] = 0xFF000000;
            palette[1] = 0xFFFFFFFF;
        } else if (bpp == 2) {
            npal = 4;
            for (i = 0; i < npal; i++)
                palette[i] = ff_cga_palette[ cga_mode45_index[0][i] ];
        } else {
            npal = 16;
            FUNC16(palette, ff_cga_palette, npal * 4);
        }
    }
    // fill remaining palette entries
    FUNC17(palette + npal, 0, AVPALETTE_SIZE - npal * 4);
    // skip remaining palette bytes
    FUNC11(&s->g, pos_after_pal, SEEK_SET);

    val = 0;
    y = s->height - 1;
    if (FUNC7(&s->g)) {
        x = 0;
        plane = 0;
        while (FUNC5(&s->g) >= 6) {
            int stop_size, marker, t1, t2;

            t1        = FUNC5(&s->g);
            t2        = FUNC7(&s->g);
            stop_size = t1 - FUNC0(t1, t2);
            // ignore uncompressed block size
            FUNC12(&s->g, 2);
            marker    = FUNC4(&s->g);

            while (plane < s->nb_planes &&
                   FUNC5(&s->g) > stop_size) {
                int run = 1;
                val = FUNC4(&s->g);
                if (val == marker) {
                    run = FUNC4(&s->g);
                    if (run == 0)
                        run = FUNC7(&s->g);
                    val = FUNC4(&s->g);
                }
                if (!FUNC5(&s->g))
                    break;

                if (bits_per_plane == 8) {
                    FUNC19(s, frame, val, run, &x, &y);
                    if (y < 0)
                        goto finish;
                } else {
                    FUNC18(s, frame, val, run, &x, &y, &plane, bits_per_plane);
                }
            }
        }

        if (s->nb_planes - plane > 1)
            return AVERROR_INVALIDDATA;

        if (plane < s->nb_planes && x < avctx->width) {
            int run = (y + 1) * avctx->width - x;
            if (bits_per_plane == 8)
                FUNC19(s, frame, val, run, &x, &y);
            else
                FUNC18(s, frame, val, run / (8 / bits_per_plane), &x, &y, &plane, bits_per_plane);
        }
    } else {
        while (y >= 0 && FUNC5(&s->g) > 0) {
            FUNC16(frame->data[0] + y * frame->linesize[0], s->g.buffer, FUNC0(avctx->width, FUNC5(&s->g)));
            FUNC12(&s->g, avctx->width);
            y--;
        }
    }
finish:

    *got_frame      = 1;
    return avpkt->size;
}