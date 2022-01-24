#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  unsigned int uint32_t ;
struct TYPE_21__ {int (* dxt1_block ) (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ;int (* dxt3_block ) (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ TextureDSPContext ;
struct TYPE_25__ {int height; int width; void* coded_height; void* coded_width; int /*<<< orphan*/  pix_fmt; } ;
struct TYPE_24__ {unsigned int* linesize; int /*<<< orphan*/ ** data; int /*<<< orphan*/  pict_type; } ;
struct TYPE_23__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_22__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_2__ GetByteContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PIX_FMT_PAL8 ; 
 int /*<<< orphan*/  AV_PIX_FMT_RGBA ; 
 void* FUNC1 (unsigned int,int) ; 
#define  TXD_DXT1 129 
#define  TXD_DXT3 128 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*,unsigned int) ; 
 unsigned int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC5 (TYPE_2__*) ; 
 unsigned int FUNC6 (TYPE_2__*) ; 
 unsigned int FUNC7 (TYPE_2__*) ; 
 unsigned int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int FUNC11 (TYPE_5__*,TYPE_4__* const,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_5__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int FUNC14 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(AVCodecContext *avctx, void *data, int *got_frame,
                            AVPacket *avpkt) {
    GetByteContext gb;
    TextureDSPContext dxtc;
    AVFrame * const p = data;
    unsigned int version, w, h, d3d_format, depth, stride, flags;
    unsigned int y, v;
    uint8_t *ptr;
    uint32_t *pal;
    int i, j;
    int ret;

    FUNC13(&dxtc);

    FUNC9(&gb, avpkt->data, avpkt->size);
    version         = FUNC8(&gb);
    FUNC10(&gb, 72);
    d3d_format      = FUNC8(&gb);
    w               = FUNC7(&gb);
    h               = FUNC7(&gb);
    depth           = FUNC5(&gb);
    FUNC10(&gb, 2);
    flags           = FUNC5(&gb);

    if (version < 8 || version > 9) {
        FUNC2(avctx, "Texture data version %u", version);
        return AVERROR_PATCHWELCOME;
    }

    if (depth == 8) {
        avctx->pix_fmt = AV_PIX_FMT_PAL8;
    } else if (depth == 16 || depth == 32) {
        avctx->pix_fmt = AV_PIX_FMT_RGBA;
    } else {
        FUNC2(avctx, "Color depth of %u", depth);
        return AVERROR_PATCHWELCOME;
    }

    if ((ret = FUNC12(avctx, w, h)) < 0)
        return ret;

    avctx->coded_width  = FUNC1(w, 4);
    avctx->coded_height = FUNC1(h, 4);

    if ((ret = FUNC11(avctx, p, 0)) < 0)
        return ret;

    p->pict_type = AV_PICTURE_TYPE_I;

    ptr    = p->data[0];
    stride = p->linesize[0];

    if (depth == 8) {
        pal = (uint32_t *) p->data[1];
        for (y = 0; y < 256; y++) {
            v = FUNC3(&gb);
            pal[y] = (v >> 8) + (v << 24);
        }
        if (FUNC6(&gb) < w * h)
            return AVERROR_INVALIDDATA;
        FUNC10(&gb, 4);
        for (y=0; y<h; y++) {
            FUNC4(&gb, ptr, w);
            ptr += stride;
        }
    } else if (depth == 16) {
        FUNC10(&gb, 4);
        switch (d3d_format) {
        case 0:
            if (!(flags & 1))
                goto unsupported;
        case TXD_DXT1:
            if (FUNC6(&gb) < FUNC0(w, 2) * FUNC0(h, 2) * 8)
                return AVERROR_INVALIDDATA;
            for (j = 0; j < avctx->height; j += 4) {
                for (i = 0; i < avctx->width; i += 4) {
                    uint8_t *p = ptr + i * 4 + j * stride;
                    int step = dxtc.dxt1_block(p, stride, gb.buffer);
                    FUNC10(&gb, step);
                }
            }
            break;
        case TXD_DXT3:
            if (FUNC6(&gb) < FUNC0(w, 2) * FUNC0(h, 2) * 16)
                return AVERROR_INVALIDDATA;
            for (j = 0; j < avctx->height; j += 4) {
                for (i = 0; i < avctx->width; i += 4) {
                    uint8_t *p = ptr + i * 4 + j * stride;
                    int step = dxtc.dxt3_block(p, stride, gb.buffer);
                    FUNC10(&gb, step);
                }
            }
            break;
        default:
            goto unsupported;
        }
    } else if (depth == 32) {
        switch (d3d_format) {
        case 0x15:
        case 0x16:
            if (FUNC6(&gb) < h * w * 4)
                return AVERROR_INVALIDDATA;
            for (y=0; y<h; y++) {
                FUNC4(&gb, ptr, w * 4);
                ptr += stride;
            }
            break;
        default:
            goto unsupported;
        }
    }

    *got_frame = 1;

    return avpkt->size;

unsupported:
    FUNC2(avctx, "d3d format (%08x)", d3d_format);
    return AVERROR_PATCHWELCOME;
}