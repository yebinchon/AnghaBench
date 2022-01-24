#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_20__ {int pix_fmt; scalar_t__ codec_id; } ;
struct TYPE_19__ {int key_frame; int interlaced_frame; int /*<<< orphan*/ * data; int /*<<< orphan*/ * linesize; int /*<<< orphan*/  pict_type; } ;
struct TYPE_17__ {int avail_out; scalar_t__ next_out; } ;
struct TYPE_18__ {int bit_depth; int hdr_state; int pic_state; int channels; scalar_t__ color_type; int bits_per_pixel; int bpp; int row_size; int cur_w; scalar_t__ last_dispose_op; int crow_size; int pass_row_size; int /*<<< orphan*/  gb; scalar_t__ has_trns; scalar_t__ crow_buf; TYPE_1__ zstream; scalar_t__ buffer; int /*<<< orphan*/  buffer_size; scalar_t__ tmp_row; int /*<<< orphan*/  tmp_row_size; scalar_t__ interlace_type; int /*<<< orphan*/  last_row; int /*<<< orphan*/  last_row_size; int /*<<< orphan*/  palette; int /*<<< orphan*/  image_linesize; int /*<<< orphan*/  image_buf; scalar_t__ pass; int /*<<< orphan*/  previous_picture; int /*<<< orphan*/  picture; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_2__ PNGDecContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ APNG_DISPOSE_OP_PREVIOUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 scalar_t__ AV_CODEC_ID_APNG ; 
 int /*<<< orphan*/  AV_GET_BUFFER_FLAG_REF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
#define  AV_PIX_FMT_GRAY16BE 131 
#define  AV_PIX_FMT_GRAY8 130 
 int AV_PIX_FMT_MONOBLACK ; 
 int AV_PIX_FMT_PAL8 ; 
#define  AV_PIX_FMT_RGB24 129 
#define  AV_PIX_FMT_RGB48BE 128 
 void* AV_PIX_FMT_RGBA ; 
 void* AV_PIX_FMT_RGBA64BE ; 
 void* AV_PIX_FMT_YA16BE ; 
 void* AV_PIX_FMT_YA8 ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ PNG_COLOR_TYPE_GRAY ; 
 scalar_t__ PNG_COLOR_TYPE_GRAY_ALPHA ; 
 scalar_t__ PNG_COLOR_TYPE_PALETTE ; 
 scalar_t__ PNG_COLOR_TYPE_RGB ; 
 scalar_t__ PNG_COLOR_TYPE_RGB_ALPHA ; 
 int PNG_IDAT ; 
 int PNG_IHDR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,int,int) ; 
 int FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__,int,int) ; 
 int FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(AVCodecContext *avctx, PNGDecContext *s,
                             uint32_t length, AVFrame *p)
{
    int ret;
    size_t byte_depth = s->bit_depth > 8 ? 2 : 1;

    if (!(s->hdr_state & PNG_IHDR)) {
        FUNC3(avctx, AV_LOG_ERROR, "IDAT without IHDR\n");
        return AVERROR_INVALIDDATA;
    }
    if (!(s->pic_state & PNG_IDAT)) {
        /* init image info */
        ret = FUNC10(avctx, s->width, s->height);
        if (ret < 0)
            return ret;

        s->channels       = FUNC8(s->color_type);
        s->bits_per_pixel = s->bit_depth * s->channels;
        s->bpp            = (s->bits_per_pixel + 7) >> 3;
        s->row_size       = (s->cur_w * s->bits_per_pixel + 7) >> 3;

        if ((s->bit_depth == 2 || s->bit_depth == 4 || s->bit_depth == 8) &&
                s->color_type == PNG_COLOR_TYPE_RGB) {
            avctx->pix_fmt = AV_PIX_FMT_RGB24;
        } else if ((s->bit_depth == 2 || s->bit_depth == 4 || s->bit_depth == 8) &&
                s->color_type == PNG_COLOR_TYPE_RGB_ALPHA) {
            avctx->pix_fmt = AV_PIX_FMT_RGBA;
        } else if ((s->bit_depth == 2 || s->bit_depth == 4 || s->bit_depth == 8) &&
                s->color_type == PNG_COLOR_TYPE_GRAY) {
            avctx->pix_fmt = AV_PIX_FMT_GRAY8;
        } else if (s->bit_depth == 16 &&
                s->color_type == PNG_COLOR_TYPE_GRAY) {
            avctx->pix_fmt = AV_PIX_FMT_GRAY16BE;
        } else if (s->bit_depth == 16 &&
                s->color_type == PNG_COLOR_TYPE_RGB) {
            avctx->pix_fmt = AV_PIX_FMT_RGB48BE;
        } else if (s->bit_depth == 16 &&
                s->color_type == PNG_COLOR_TYPE_RGB_ALPHA) {
            avctx->pix_fmt = AV_PIX_FMT_RGBA64BE;
        } else if ((s->bits_per_pixel == 1 || s->bits_per_pixel == 2 || s->bits_per_pixel == 4 || s->bits_per_pixel == 8) &&
                s->color_type == PNG_COLOR_TYPE_PALETTE) {
            avctx->pix_fmt = AV_PIX_FMT_PAL8;
        } else if (s->bit_depth == 1 && s->bits_per_pixel == 1 && avctx->codec_id != AV_CODEC_ID_APNG) {
            avctx->pix_fmt = AV_PIX_FMT_MONOBLACK;
        } else if (s->bit_depth == 8 &&
                s->color_type == PNG_COLOR_TYPE_GRAY_ALPHA) {
            avctx->pix_fmt = AV_PIX_FMT_YA8;
        } else if (s->bit_depth == 16 &&
                s->color_type == PNG_COLOR_TYPE_GRAY_ALPHA) {
            avctx->pix_fmt = AV_PIX_FMT_YA16BE;
        } else {
            FUNC4(avctx,
                                          "Bit depth %d color type %d",
                                          s->bit_depth, s->color_type);
            return AVERROR_PATCHWELCOME;
        }

        if (s->has_trns && s->color_type != PNG_COLOR_TYPE_PALETTE) {
            switch (avctx->pix_fmt) {
            case AV_PIX_FMT_RGB24:
                avctx->pix_fmt = AV_PIX_FMT_RGBA;
                break;

            case AV_PIX_FMT_RGB48BE:
                avctx->pix_fmt = AV_PIX_FMT_RGBA64BE;
                break;

            case AV_PIX_FMT_GRAY8:
                avctx->pix_fmt = AV_PIX_FMT_YA8;
                break;

            case AV_PIX_FMT_GRAY16BE:
                avctx->pix_fmt = AV_PIX_FMT_YA16BE;
                break;

            default:
                FUNC5(avctx, "bit depth %d "
                        "and color type %d with TRNS",
                        s->bit_depth, s->color_type);
                return AVERROR_INVALIDDATA;
            }

            s->bpp += byte_depth;
        }

        if ((ret = FUNC12(avctx, &s->picture, AV_GET_BUFFER_FLAG_REF)) < 0)
            return ret;
        if (avctx->codec_id == AV_CODEC_ID_APNG && s->last_dispose_op != APNG_DISPOSE_OP_PREVIOUS) {
            FUNC13(avctx, &s->previous_picture);
            if ((ret = FUNC12(avctx, &s->previous_picture, AV_GET_BUFFER_FLAG_REF)) < 0)
                return ret;
        }
        p->pict_type        = AV_PICTURE_TYPE_I;
        p->key_frame        = 1;
        p->interlaced_frame = !!s->interlace_type;

        FUNC11(avctx);

        /* compute the compressed row size */
        if (!s->interlace_type) {
            s->crow_size = s->row_size + 1;
        } else {
            s->pass          = 0;
            s->pass_row_size = FUNC9(s->pass,
                    s->bits_per_pixel,
                    s->cur_w);
            s->crow_size = s->pass_row_size + 1;
        }
        FUNC7(avctx, "row_size=%d crow_size =%d\n",
                s->row_size, s->crow_size);
        s->image_buf      = p->data[0];
        s->image_linesize = p->linesize[0];
        /* copy the palette if needed */
        if (avctx->pix_fmt == AV_PIX_FMT_PAL8)
            FUNC14(p->data[1], s->palette, 256 * sizeof(uint32_t));
        /* empty row is used if differencing to the first row */
        FUNC2(&s->last_row, &s->last_row_size, s->row_size);
        if (!s->last_row)
            return AVERROR_INVALIDDATA;
        if (s->interlace_type ||
                s->color_type == PNG_COLOR_TYPE_RGB_ALPHA) {
            FUNC1(&s->tmp_row, &s->tmp_row_size, s->row_size);
            if (!s->tmp_row)
                return AVERROR_INVALIDDATA;
        }
        /* compressed row */
        FUNC1(&s->buffer, &s->buffer_size, s->row_size + 16);
        if (!s->buffer)
            return FUNC0(ENOMEM);

        /* we want crow_buf+1 to be 16-byte aligned */
        s->crow_buf          = s->buffer + 15;
        s->zstream.avail_out = s->crow_size;
        s->zstream.next_out  = s->crow_buf;
    }

    s->pic_state |= PNG_IDAT;

    /* set image to non-transparent bpp while decompressing */
    if (s->has_trns && s->color_type != PNG_COLOR_TYPE_PALETTE)
        s->bpp -= byte_depth;

    ret = FUNC15(s, length);

    if (s->has_trns && s->color_type != PNG_COLOR_TYPE_PALETTE)
        s->bpp += byte_depth;

    if (ret < 0)
        return ret;

    FUNC6(&s->gb, 4); /* crc */

    return 0;
}