#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_16__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int int8_t ;
struct TYPE_23__ {int width; int bpp; int bppcount; int* subsampling; int* yuv_line; int yuv_line_size; int compr; int* deinvert_buf; scalar_t__ tiff_type; int strips; scalar_t__ fill_order; TYPE_16__* avctx; scalar_t__ is_bayer; int /*<<< orphan*/  gb; int /*<<< orphan*/  lzw; scalar_t__ planar; } ;
typedef  TYPE_1__ TiffContext ;
struct TYPE_25__ {scalar_t__ format; } ;
struct TYPE_24__ {int flags; int nb_components; } ;
struct TYPE_22__ {scalar_t__ pix_fmt; } ;
typedef  int /*<<< orphan*/  PutByteContext ;
typedef  TYPE_2__ AVPixFmtDescriptor ;
typedef  TYPE_3__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_PIX_FMT_FLAG_PLANAR ; 
 int AV_PIX_FMT_FLAG_RGB ; 
 scalar_t__ AV_PIX_FMT_GRAY12 ; 
 scalar_t__ AV_PIX_FMT_PAL8 ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FF_LZW_TIFF ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int TIFF_ADOBE_DEFLATE ; 
 int TIFF_CCITT_RLE ; 
 int TIFF_DEFLATE ; 
 int TIFF_G3 ; 
 int TIFF_G4 ; 
 int TIFF_LZMA ; 
 int TIFF_LZW ; 
 int TIFF_NEWJPEG ; 
#define  TIFF_PACKBITS 129 
#define  TIFF_RAW 128 
 scalar_t__ TIFF_TYPE_CINEMADNG ; 
 scalar_t__ TIFF_TYPE_DNG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int**,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_16__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (TYPE_16__*,TYPE_3__*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int,int const*,int,int /*<<< orphan*/ ) ; 
 int* ff_reverse ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int,int*,int,int const*,int,int,int) ; 
 int FUNC16 (TYPE_1__*,int*,int,int const*,int,int,int) ; 
 int FUNC17 (TYPE_1__*,TYPE_3__*,int*,int,int const*,int,int,int,int,int) ; 
 int FUNC18 (TYPE_1__*,TYPE_3__*,int*,int,int const*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,TYPE_3__*,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,TYPE_3__*,int*,int) ; 

__attribute__((used)) static int FUNC21(TiffContext *s, AVFrame *p, uint8_t *dst, int stride,
                             const uint8_t *src, int size, int strip_start, int lines)
{
    PutByteContext pb;
    int c, line, pixels, code, ret;
    const uint8_t *ssrc = src;
    int width = ((s->width * s->bpp) + 7) >> 3;
    const AVPixFmtDescriptor *desc = FUNC4(p->format);
    int is_yuv = !(desc->flags & AV_PIX_FMT_FLAG_RGB) &&
                 (desc->flags & AV_PIX_FMT_FLAG_PLANAR) &&
                 desc->nb_components >= 3;
    int is_dng;

    if (s->planar)
        width /= s->bppcount;

    if (size <= 0)
        return AVERROR_INVALIDDATA;

    if (is_yuv) {
        int bytes_per_row = (((s->width - 1) / s->subsampling[0] + 1) * s->bpp *
                            s->subsampling[0] * s->subsampling[1] + 7) >> 3;
        FUNC2(&s->yuv_line, &s->yuv_line_size, bytes_per_row);
        if (s->yuv_line == NULL) {
            FUNC3(s->avctx, AV_LOG_ERROR, "Not enough memory\n");
            return FUNC0(ENOMEM);
        }
        dst = s->yuv_line;
        stride = 0;

        width = (s->width - 1) / s->subsampling[0] + 1;
        width = width * s->subsampling[0] * s->subsampling[1] + 2*width;
        FUNC1(width <= bytes_per_row);
        FUNC1(s->bpp == 24);
    }
    if (s->is_bayer) {
        width = (s->bpp * s->width + 7) >> 3;
    }
    if (p->format == AV_PIX_FMT_GRAY12) {
        FUNC2(&s->yuv_line, &s->yuv_line_size, width);
        if (s->yuv_line == NULL) {
            FUNC3(s->avctx, AV_LOG_ERROR, "Not enough memory\n");
            return FUNC0(ENOMEM);
        }
        dst = s->yuv_line;
        stride = 0;
    }

    if (s->compr == TIFF_DEFLATE || s->compr == TIFF_ADOBE_DEFLATE) {
#if CONFIG_ZLIB
        return tiff_unpack_zlib(s, p, dst, stride, src, size, width, lines,
                                strip_start, is_yuv);
#else
        FUNC3(s->avctx, AV_LOG_ERROR,
               "zlib support not enabled, "
               "deflate compression not supported\n");
        return FUNC0(ENOSYS);
#endif
    }
    if (s->compr == TIFF_LZMA) {
#if CONFIG_LZMA
        return tiff_unpack_lzma(s, p, dst, stride, src, size, width, lines,
                                strip_start, is_yuv);
#else
        FUNC3(s->avctx, AV_LOG_ERROR,
               "LZMA support not enabled\n");
        return FUNC0(ENOSYS);
#endif
    }
    if (s->compr == TIFF_LZW) {
        if (s->fill_order) {
            if ((ret = FUNC10(s, src, size)) < 0)
                return ret;
            ssrc = src = s->deinvert_buf;
        }
        if (size > 1 && !src[0] && (src[1]&1)) {
            FUNC3(s->avctx, AV_LOG_ERROR, "Old style LZW is unsupported\n");
        }
        if ((ret = FUNC14(s->lzw, 8, src, size, FF_LZW_TIFF)) < 0) {
            FUNC3(s->avctx, AV_LOG_ERROR, "Error initializing LZW decoder\n");
            return ret;
        }
        for (line = 0; line < lines; line++) {
            pixels = FUNC13(s->lzw, dst, width);
            if (pixels < width) {
                FUNC3(s->avctx, AV_LOG_ERROR, "Decoded only %i bytes of %i\n",
                       pixels, width);
                return AVERROR_INVALIDDATA;
            }
            if (s->bpp < 8 && s->avctx->pix_fmt == AV_PIX_FMT_PAL8)
                FUNC15(s, s->bpp, dst, 1, dst, 0, width, 0);
            if (is_yuv) {
                FUNC20(s, p, dst, strip_start + line);
                line += s->subsampling[1] - 1;
            } else if (p->format == AV_PIX_FMT_GRAY12) {
                FUNC19(s, p, dst, strip_start + line, width, s->bpp);
            }
            dst += stride;
        }
        return 0;
    }
    if (s->compr == TIFF_CCITT_RLE ||
        s->compr == TIFF_G3        ||
        s->compr == TIFF_G4) {
        if (is_yuv || p->format == AV_PIX_FMT_GRAY12)
            return AVERROR_INVALIDDATA;

        return FUNC16(s, dst, stride, src, size, width, lines);
    }

    FUNC7(&s->gb, src, size);
    FUNC8(&pb, dst, is_yuv ? s->yuv_line_size : (stride * lines));

    is_dng = (s->tiff_type == TIFF_TYPE_DNG || s->tiff_type == TIFF_TYPE_CINEMADNG);

    /* Decode JPEG-encoded DNGs with strips */
    if (s->compr == TIFF_NEWJPEG && is_dng) {
        if (s->strips > 1) {
            FUNC3(s->avctx, AV_LOG_ERROR, "More than one DNG JPEG strips unsupported\n");
            return AVERROR_PATCHWELCOME;
        }
        if ((ret = FUNC12(s->avctx, p)) < 0)
            return ret;
        return 0;
    }

    for (line = 0; line < lines; line++) {
        if (src - ssrc > size) {
            FUNC3(s->avctx, AV_LOG_ERROR, "Source data overread\n");
            return AVERROR_INVALIDDATA;
        }

        if (FUNC5(&s->gb) == 0 || FUNC6(&pb))
            break;
        FUNC9(&pb, stride * line, SEEK_SET);
        switch (s->compr) {
        case TIFF_RAW:
            if (ssrc + size - src < width)
                return AVERROR_INVALIDDATA;

            if (!s->fill_order) {
                FUNC15(s, s->bpp * (s->avctx->pix_fmt == AV_PIX_FMT_PAL8 || s->is_bayer),
                                dst, 1, src, 0, width, 0);
            } else {
                int i;
                for (i = 0; i < width; i++)
                    dst[i] = ff_reverse[src[i]];
            }

            /* Color processing for DNG images with uncompressed strips (non-tiled) */
            if (is_dng) {
                int is_u16, pixel_size_bytes, pixel_size_bits;

                is_u16 = (s->bpp > 8);
                pixel_size_bits = (is_u16 ? 16 : 8);
                pixel_size_bytes = (is_u16 ? sizeof(uint16_t) : sizeof(uint8_t));

                FUNC11(s,
                         dst,
                         0, // no stride, only 1 line
                         dst,
                         0, // no stride, only 1 line
                         width / pixel_size_bytes * pixel_size_bits / s->bpp * s->bppcount, // need to account for [1, 16] bpp
                         1,
                         0, // single-component variation is only preset in JPEG-encoded DNGs
                         is_u16);
            }

            src += width;
            break;
        case TIFF_PACKBITS:
            for (pixels = 0; pixels < width;) {
                if (ssrc + size - src < 2) {
                    FUNC3(s->avctx, AV_LOG_ERROR, "Read went out of bounds\n");
                    return AVERROR_INVALIDDATA;
                }
                code = s->fill_order ? (int8_t) ff_reverse[*src++]: (int8_t) *src++;
                if (code >= 0) {
                    code++;
                    if (pixels + code > width ||
                        ssrc + size - src < code) {
                        FUNC3(s->avctx, AV_LOG_ERROR,
                               "Copy went out of bounds\n");
                        return AVERROR_INVALIDDATA;
                    }
                    FUNC15(s, s->bpp * (s->avctx->pix_fmt == AV_PIX_FMT_PAL8),
                                    dst, 1, src, 0, code, pixels);
                    src    += code;
                    pixels += code;
                } else if (code != -128) { // -127..-1
                    code = (-code) + 1;
                    if (pixels + code > width) {
                        FUNC3(s->avctx, AV_LOG_ERROR,
                               "Run went out of bounds\n");
                        return AVERROR_INVALIDDATA;
                    }
                    c = *src++;
                    FUNC15(s, s->bpp * (s->avctx->pix_fmt == AV_PIX_FMT_PAL8),
                                    dst, 0, NULL, c, code, pixels);
                    pixels += code;
                }
            }
            if (s->fill_order) {
                int i;
                for (i = 0; i < width; i++)
                    dst[i] = ff_reverse[dst[i]];
            }
            break;
        }
        if (is_yuv) {
            FUNC20(s, p, dst, strip_start + line);
            line += s->subsampling[1] - 1;
        } else if (p->format == AV_PIX_FMT_GRAY12) {
            FUNC19(s, p, dst, strip_start + line, width, s->bpp);
        }
        dst += stride;
    }
    return 0;
}