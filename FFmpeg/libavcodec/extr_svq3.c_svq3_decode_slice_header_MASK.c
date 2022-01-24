#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
struct TYPE_18__ {int index; scalar_t__ buffer; } ;
struct TYPE_17__ {TYPE_1__* priv_data; } ;
struct TYPE_16__ {int mb_xy; int watermark_key; int mb_num; int const mb_x; int* intra4x4_pred_mode; int* mb2br_xy; scalar_t__ mb_y; int const mb_stride; int mb_width; TYPE_4__ gb_slice; scalar_t__ has_watermark; scalar_t__ adaptive_quant; void* qscale; void* slice_num; TYPE_2__* avctx; int /*<<< orphan*/  slice_type; TYPE_4__ gb; int /*<<< orphan*/ * slice_buf; int /*<<< orphan*/  slice_size; } ;
typedef  TYPE_1__ SVQ3Context ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * ff_h264_golomb_to_pict_type ; 
 void* FUNC7 (TYPE_4__*,int) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int FUNC9 (TYPE_4__*) ; 
 unsigned int FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,int,int) ; 
 int FUNC15 (TYPE_4__*,int) ; 
 scalar_t__ FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC20(AVCodecContext *avctx)
{
    SVQ3Context *s = avctx->priv_data;
    const int mb_xy   = s->mb_xy;
    int i, header;
    unsigned slice_id;

    header = FUNC7(&s->gb, 8);

    if (((header & 0x9F) != 1 && (header & 0x9F) != 2) || (header & 0x60) == 0) {
        /* TODO: what? */
        FUNC4(avctx, AV_LOG_ERROR, "unsupported slice header (%02X)\n", header);
        return -1;
    } else {
        int slice_bits, slice_bytes, slice_length;
        int length = header >> 5 & 3;

        slice_length = FUNC15(&s->gb, 8 * length);
        slice_bits   = slice_length * 8;
        slice_bytes  = slice_length + length - 1;

        FUNC17(&s->gb, 8);

        FUNC3(&s->slice_buf, &s->slice_size, slice_bytes + AV_INPUT_BUFFER_PADDING_SIZE);
        if (!s->slice_buf)
            return FUNC0(ENOMEM);

        if (slice_bytes * 8LL > FUNC9(&s->gb)) {
            FUNC4(avctx, AV_LOG_ERROR, "slice after bitstream end\n");
            return AVERROR_INVALIDDATA;
        }
        FUNC12(s->slice_buf, s->gb.buffer + s->gb.index / 8, slice_bytes);

        if (s->watermark_key) {
            uint32_t header = FUNC1(&s->slice_buf[1]);
            FUNC2(&s->slice_buf[1], header ^ s->watermark_key);
        }
        FUNC11(&s->gb_slice, s->slice_buf, slice_bits);

        if (length > 0) {
            FUNC13(s->slice_buf, &s->slice_buf[slice_length], length - 1);
        }
        FUNC19(&s->gb, slice_bytes * 8);
    }

    if ((slice_id = FUNC10(&s->gb_slice)) >= 3) {
        FUNC4(s->avctx, AV_LOG_ERROR, "illegal slice type %u \n", slice_id);
        return -1;
    }

    s->slice_type = ff_h264_golomb_to_pict_type[slice_id];

    if ((header & 0x9F) == 2) {
        i = (s->mb_num < 64) ? 6 : (1 + FUNC5(s->mb_num - 1));
        FUNC7(&s->gb_slice, i);
    } else if (FUNC8(&s->gb_slice)) {
        FUNC6(s->avctx, "Media key encryption");
        return AVERROR_PATCHWELCOME;
    }

    s->slice_num      = FUNC7(&s->gb_slice, 8);
    s->qscale         = FUNC7(&s->gb_slice, 5);
    s->adaptive_quant = FUNC8(&s->gb_slice);

    /* unknown fields */
    FUNC18(&s->gb_slice);

    if (s->has_watermark)
        FUNC18(&s->gb_slice);

    FUNC18(&s->gb_slice);
    FUNC17(&s->gb_slice, 2);

    if (FUNC16(&s->gb_slice) < 0)
        return AVERROR_INVALIDDATA;

    /* reset intra predictors and invalidate motion vector references */
    if (s->mb_x > 0) {
        FUNC14(s->intra4x4_pred_mode + s->mb2br_xy[mb_xy - 1] + 3,
               -1, 4 * sizeof(int8_t));
        FUNC14(s->intra4x4_pred_mode + s->mb2br_xy[mb_xy - s->mb_x],
               -1, 8 * sizeof(int8_t) * s->mb_x);
    }
    if (s->mb_y > 0) {
        FUNC14(s->intra4x4_pred_mode + s->mb2br_xy[mb_xy - s->mb_stride],
               -1, 8 * sizeof(int8_t) * (s->mb_width - s->mb_x));

        if (s->mb_x > 0)
            s->intra4x4_pred_mode[s->mb2br_xy[mb_xy - s->mb_stride - 1] + 3] = -1;
    }

    return 0;
}