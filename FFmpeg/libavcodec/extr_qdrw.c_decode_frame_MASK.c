#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_35__ {void* pix_fmt; } ;
struct TYPE_34__ {int palette_has_changed; int key_frame; int /*<<< orphan*/  pict_type; scalar_t__* data; } ;
struct TYPE_33__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_32__ {scalar_t__ buffer; } ;
typedef  TYPE_1__ GetByteContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 void* AV_PIX_FMT_ARGB ; 
 void* AV_PIX_FMT_PAL8 ; 
 void* AV_PIX_FMT_RGB24 ; 
 void* AV_PIX_FMT_RGB555 ; 
#define  CLIP 133 
#define  DIRECTBITSRECT 132 
#define  DIRECTBITSRGN 131 
 int EOP ; 
#define  LONGCOMMENT 130 
#define  PACKBITSRECT 129 
#define  PACKBITSRGN 128 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,...) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (scalar_t__,int) ; 
 int FUNC9 (TYPE_4__*,TYPE_3__* const,TYPE_1__*,int) ; 
 int FUNC10 (TYPE_4__*,TYPE_3__* const,TYPE_1__*) ; 
 int FUNC11 (TYPE_4__*,TYPE_3__* const,TYPE_1__*) ; 
 int FUNC12 (TYPE_4__*,TYPE_3__* const,TYPE_1__*) ; 
 int FUNC13 (TYPE_4__*,TYPE_3__* const,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_4__*,int,int) ; 
 int FUNC15 (TYPE_4__*,TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC16(AVCodecContext *avctx,
                        void *data, int *got_frame,
                        AVPacket *avpkt)
{
    AVFrame * const p      = data;
    GetByteContext gbc;
    int colors;
    int w, h, ret;
    int ver;

    FUNC6(&gbc, avpkt->data, avpkt->size);
    if (   FUNC5(&gbc) >= 552
           &&  FUNC8(gbc.buffer + 512, FUNC5(&gbc) - 512)
       )
        FUNC7(&gbc, 512);

    ver = FUNC8(gbc.buffer, FUNC5(&gbc));

    /* smallest PICT header */
    if (FUNC5(&gbc) < 40) {
        FUNC0(avctx, AV_LOG_ERROR, "Frame is too small %d\n",
               FUNC5(&gbc));
        return AVERROR_INVALIDDATA;
    }

    FUNC7(&gbc, 6);
    h = FUNC3(&gbc);
    w = FUNC3(&gbc);

    ret = FUNC14(avctx, w, h);
    if (ret < 0)
        return ret;

    /* version 1 is identified by 0x1101
     * it uses byte-aligned opcodes rather than word-aligned */
    if (ver == 1) {
        FUNC2(avctx, "QuickDraw version 1");
        return AVERROR_PATCHWELCOME;
    } else if (ver != 2) {
        FUNC2(avctx, "QuickDraw version unknown (%X)", FUNC4(&gbc));
        return AVERROR_PATCHWELCOME;
    }

    FUNC7(&gbc, 4+26);

    while (FUNC5(&gbc) >= 4) {
        int bppcnt, bpp;
        int rowbytes, pack_type;
        int flags;
        int opcode = FUNC3(&gbc);

        switch(opcode) {
        case CLIP:
            FUNC7(&gbc, 10);
            break;
        case PACKBITSRECT:
        case PACKBITSRGN:
            FUNC0(avctx, AV_LOG_DEBUG, "Parsing Packbit opcode\n");

            flags = FUNC3(&gbc) & 0xC000;
            FUNC7(&gbc, 28);
            bppcnt = FUNC3(&gbc); /* cmpCount */
            bpp    = FUNC3(&gbc); /* cmpSize */

            FUNC0(avctx, AV_LOG_DEBUG, "bppcount %d bpp %d\n", bppcnt, bpp);
            if (bppcnt == 1 && bpp == 8) {
                avctx->pix_fmt = AV_PIX_FMT_PAL8;
            } else if (bppcnt == 1 && (bpp == 4 || bpp == 2)) {
                avctx->pix_fmt = AV_PIX_FMT_PAL8;
            } else if (bppcnt == 3 && bpp == 5) {
                avctx->pix_fmt = AV_PIX_FMT_RGB555;
            } else {
                FUNC0(avctx, AV_LOG_ERROR,
                       "Invalid pixel format (bppcnt %d bpp %d) in Packbit\n",
                       bppcnt, bpp);
                return AVERROR_INVALIDDATA;
            }

            /* jump to palette */
            FUNC7(&gbc, 18);
            colors = FUNC3(&gbc);

            if (colors < 0 || colors > 256) {
                FUNC0(avctx, AV_LOG_ERROR,
                       "Error color count - %i(0x%X)\n", colors, colors);
                return AVERROR_INVALIDDATA;
            }
            if (FUNC5(&gbc) < (colors + 1) * 8) {
                FUNC0(avctx, AV_LOG_ERROR, "Palette is too small %d\n",
                       FUNC5(&gbc));
                return AVERROR_INVALIDDATA;
            }
            if ((ret = FUNC13(avctx, p, 0)) < 0)
                return ret;

            ret = FUNC15(avctx, &gbc, (uint32_t *)p->data[1], colors, flags & 0x8000);
            if (ret < 0)
                return ret;
            p->palette_has_changed = 1;

            /* jump to image data */
            FUNC7(&gbc, 18);

            if (opcode == PACKBITSRGN) {
                FUNC7(&gbc, 2 + 8); /* size + rect */
                FUNC1(avctx, "Packbit mask region");
            }

            if (avctx->pix_fmt == AV_PIX_FMT_RGB555)
                ret = FUNC10(avctx, p, &gbc);
            else if (bpp == 2)
                ret = FUNC11(avctx, p, &gbc);
            else if (bpp == 4)
                ret = FUNC12(avctx, p, &gbc);
            else
                ret = FUNC9(avctx, p, &gbc, bppcnt);
            if (ret < 0)
                return ret;
            *got_frame = 1;
            break;
        case DIRECTBITSRECT:
        case DIRECTBITSRGN:
            FUNC0(avctx, AV_LOG_DEBUG, "Parsing Directbit opcode\n");

            FUNC7(&gbc, 4);
            rowbytes = FUNC3(&gbc) & 0x3FFF;
            if (rowbytes <= 250) {
                FUNC1(avctx, "Short rowbytes");
                return AVERROR_PATCHWELCOME;
            }

            FUNC7(&gbc, 4);
            h = FUNC3(&gbc);
            w = FUNC3(&gbc);
            FUNC7(&gbc, 2);

            ret = FUNC14(avctx, w, h);
            if (ret < 0)
                return ret;

            pack_type = FUNC3(&gbc);

            FUNC7(&gbc, 16);
            bppcnt = FUNC3(&gbc); /* cmpCount */
            bpp    = FUNC3(&gbc); /* cmpSize */

            FUNC0(avctx, AV_LOG_DEBUG, "bppcount %d bpp %d\n", bppcnt, bpp);
            if (bppcnt == 3 && bpp == 8) {
                avctx->pix_fmt = AV_PIX_FMT_RGB24;
            } else if (bppcnt == 3 && bpp == 5 || bppcnt == 2 && bpp == 8) {
                avctx->pix_fmt = AV_PIX_FMT_RGB555;
            } else if (bppcnt == 4 && bpp == 8) {
                avctx->pix_fmt = AV_PIX_FMT_ARGB;
            } else {
                FUNC0(avctx, AV_LOG_ERROR,
                       "Invalid pixel format (bppcnt %d bpp %d) in Directbit\n",
                       bppcnt, bpp);
                return AVERROR_INVALIDDATA;
            }

            /* set packing when default is selected */
            if (pack_type == 0)
                pack_type = bppcnt;

            if (pack_type != 3 && pack_type != 4) {
                FUNC2(avctx, "Pack type %d", pack_type);
                return AVERROR_PATCHWELCOME;
            }
            if (FUNC5(&gbc) < 30)
                return AVERROR_INVALIDDATA;
            if ((ret = FUNC13(avctx, p, 0)) < 0)
                return ret;

            /* jump to data */
            FUNC7(&gbc, 30);

            if (opcode == DIRECTBITSRGN) {
                FUNC7(&gbc, 2 + 8); /* size + rect */
                FUNC1(avctx, "DirectBit mask region");
            }

            if (avctx->pix_fmt == AV_PIX_FMT_RGB555)
                ret = FUNC10(avctx, p, &gbc);
            else
                ret = FUNC9(avctx, p, &gbc, bppcnt);
            if (ret < 0)
                return ret;
            *got_frame = 1;
            break;
        case LONGCOMMENT:
            FUNC3(&gbc);
            FUNC7(&gbc, FUNC3(&gbc));
            break;
        default:
            FUNC0(avctx, AV_LOG_TRACE, "Unknown 0x%04X opcode\n", opcode);
            break;
        }
        /* exit the loop when a known pixel block has been found */
        if (*got_frame) {
            int eop, trail;

            /* re-align to a word */
            FUNC7(&gbc, FUNC5(&gbc) % 2);

            eop = FUNC3(&gbc);
            trail = FUNC5(&gbc);
            if (eop != EOP)
                FUNC0(avctx, AV_LOG_WARNING,
                       "Missing end of picture opcode (found 0x%04X)\n", eop);
            if (trail)
                FUNC0(avctx, AV_LOG_WARNING, "Got %d trailing bytes\n", trail);
            break;
        }
    }

    if (*got_frame) {
        p->pict_type = AV_PICTURE_TYPE_I;
        p->key_frame = 1;

        return avpkt->size;
    } else {
        FUNC0(avctx, AV_LOG_ERROR, "Frame contained no usable data\n");

        return AVERROR_INVALIDDATA;
    }
}