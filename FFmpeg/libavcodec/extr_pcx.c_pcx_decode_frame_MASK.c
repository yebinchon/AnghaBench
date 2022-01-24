#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_11__ {void* den; void* num; } ;
struct TYPE_14__ {int err_recognition; int /*<<< orphan*/  pix_fmt; TYPE_1__ sample_aspect_ratio; } ;
struct TYPE_13__ {int** data; unsigned int* linesize; int /*<<< orphan*/  pict_type; } ;
struct TYPE_12__ {int size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AV_EF_EXPLODE ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PIX_FMT_PAL8 ; 
 int /*<<< orphan*/  AV_PIX_FMT_RGB24 ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int PCX_HEADER_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int* FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_4__*,TYPE_3__* const,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_4__*,unsigned int,unsigned int) ; 
 int FUNC15 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,int*,unsigned int,int) ; 

__attribute__((used)) static int FUNC20(AVCodecContext *avctx, void *data, int *got_frame,
                            AVPacket *avpkt)
{
    GetByteContext gb;
    AVFrame * const p  = data;
    int compressed, xmin, ymin, xmax, ymax;
    int ret;
    unsigned int w, h, bits_per_pixel, bytes_per_line, nplanes, stride, y, x,
                 bytes_per_scanline;
    uint8_t *ptr, *scanline;

    if (avpkt->size < PCX_HEADER_SIZE) {
        FUNC3(avctx, AV_LOG_ERROR, "Packet too small\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC9(&gb, avpkt->data, avpkt->size);

    if (FUNC7(&gb) != 0x0a || FUNC7(&gb) > 5) {
        FUNC3(avctx, AV_LOG_ERROR, "this is not PCX encoded data\n");
        return AVERROR_INVALIDDATA;
    }

    compressed                     = FUNC7(&gb);
    bits_per_pixel                 = FUNC7(&gb);
    xmin                           = FUNC8(&gb);
    ymin                           = FUNC8(&gb);
    xmax                           = FUNC8(&gb);
    ymax                           = FUNC8(&gb);
    avctx->sample_aspect_ratio.num = FUNC8(&gb);
    avctx->sample_aspect_ratio.den = FUNC8(&gb);

    if (xmax < xmin || ymax < ymin) {
        FUNC3(avctx, AV_LOG_ERROR, "invalid image dimensions\n");
        return AVERROR_INVALIDDATA;
    }

    w = xmax - xmin + 1;
    h = ymax - ymin + 1;

    FUNC11(&gb, 49);
    nplanes            = FUNC7(&gb);
    bytes_per_line     = FUNC8(&gb);
    bytes_per_scanline = nplanes * bytes_per_line;

    if (bytes_per_scanline < (w * bits_per_pixel * nplanes + 7) / 8 ||
        (!compressed && bytes_per_scanline > FUNC6(&gb) / h)) {
        FUNC3(avctx, AV_LOG_ERROR, "PCX data is corrupted\n");
        return AVERROR_INVALIDDATA;
    }

    switch ((nplanes << 8) + bits_per_pixel) {
    case 0x0308:
        avctx->pix_fmt = AV_PIX_FMT_RGB24;
        break;
    case 0x0108:
    case 0x0104:
    case 0x0102:
    case 0x0101:
    case 0x0401:
    case 0x0301:
    case 0x0201:
        avctx->pix_fmt = AV_PIX_FMT_PAL8;
        break;
    default:
        FUNC3(avctx, AV_LOG_ERROR, "invalid PCX file\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC11(&gb, 60);

    if ((ret = FUNC14(avctx, w, h)) < 0)
        return ret;

    if ((ret = FUNC13(avctx, p, 0)) < 0)
        return ret;

    p->pict_type = AV_PICTURE_TYPE_I;

    ptr    = p->data[0];
    stride = p->linesize[0];

    scanline = FUNC4(bytes_per_scanline + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!scanline)
        return FUNC0(ENOMEM);

    if (nplanes == 3 && bits_per_pixel == 8) {
        for (y = 0; y < h; y++) {
            ret = FUNC19(&gb, scanline, bytes_per_scanline, compressed);
            if (ret < 0)
                goto end;

            for (x = 0; x < w; x++) {
                ptr[3 * x]     = scanline[x];
                ptr[3 * x + 1] = scanline[x + bytes_per_line];
                ptr[3 * x + 2] = scanline[x + (bytes_per_line << 1)];
            }

            ptr += stride;
        }
    } else if (nplanes == 1 && bits_per_pixel == 8) {
        int palstart = avpkt->size - 769;

        if (avpkt->size < 769) {
            FUNC3(avctx, AV_LOG_ERROR, "File is too short\n");
            ret = avctx->err_recognition & AV_EF_EXPLODE ?
                  AVERROR_INVALIDDATA : avpkt->size;
            goto end;
        }

        for (y = 0; y < h; y++, ptr += stride) {
            ret = FUNC19(&gb, scanline, bytes_per_scanline, compressed);
            if (ret < 0)
                goto end;
            FUNC17(ptr, scanline, w);
        }

        if (FUNC12(&gb) != palstart) {
            FUNC3(avctx, AV_LOG_WARNING, "image data possibly corrupted\n");
            FUNC10(&gb, palstart, SEEK_SET);
        }
        if (FUNC5(&gb) != 12) {
            FUNC3(avctx, AV_LOG_ERROR, "expected palette after image data\n");
            ret = avctx->err_recognition & AV_EF_EXPLODE ?
                  AVERROR_INVALIDDATA : avpkt->size;
            goto end;
        }
    } else if (nplanes == 1) {   /* all packed formats, max. 16 colors */
        GetBitContext s;

        for (y = 0; y < h; y++) {
            FUNC16(&s, scanline, bytes_per_scanline);

            ret = FUNC19(&gb, scanline, bytes_per_scanline, compressed);
            if (ret < 0)
                goto end;

            for (x = 0; x < w; x++)
                ptr[x] = FUNC15(&s, bits_per_pixel);
            ptr += stride;
        }
    } else {    /* planar, 4, 8 or 16 colors */
        int i;

        for (y = 0; y < h; y++) {
            ret = FUNC19(&gb, scanline, bytes_per_scanline, compressed);
            if (ret < 0)
                goto end;

            for (x = 0; x < w; x++) {
                int m = 0x80 >> (x & 7), v = 0;
                for (i = nplanes - 1; i >= 0; i--) {
                    v <<= 1;
                    v  += !!(scanline[i * bytes_per_line + (x >> 3)] & m);
                }
                ptr[x] = v;
            }
            ptr += stride;
        }
    }

    ret = FUNC12(&gb);
    if (nplanes == 1 && bits_per_pixel == 8) {
        FUNC18(&gb, (uint32_t *)p->data[1], 256);
        ret += 256 * 3;
    } else if (bits_per_pixel * nplanes == 1) {
        FUNC1(p->data[1]  , 0xFF000000);
        FUNC1(p->data[1]+4, 0xFFFFFFFF);
    } else if (bits_per_pixel < 8) {
        FUNC10(&gb, 16, SEEK_SET);
        FUNC18(&gb, (uint32_t *)p->data[1], 16);
    }

    *got_frame = 1;

end:
    FUNC2(scanline);
    return ret;
}