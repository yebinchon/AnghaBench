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
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_18__ {TYPE_1__* priv_data; } ;
struct TYPE_17__ {scalar_t__ pict_type; } ;
struct TYPE_16__ {int size_in_bits; int /*<<< orphan*/  buffer; } ;
struct TYPE_15__ {int width; int height; int nonref; int frame_code; TYPE_2__ gb; } ;
typedef  TYPE_1__ SVQ1Context ;
typedef  TYPE_2__ GetBitContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 scalar_t__ AV_PICTURE_TYPE_I ; 
 scalar_t__ AV_PICTURE_TYPE_P ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,char*,int) ; 
 int** ff_svq1_frame_size_table ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVCodecContext *avctx, AVFrame *frame)
{
    SVQ1Context *s = avctx->priv_data;
    GetBitContext *bitbuf = &s->gb;
    int frame_size_code;
    int width  = s->width;
    int height = s->height;

    FUNC6(bitbuf, 8); /* temporal_reference */

    /* frame type */
    s->nonref = 0;
    switch (FUNC3(bitbuf, 2)) {
    case 0:
        frame->pict_type = AV_PICTURE_TYPE_I;
        break;
    case 2:
        s->nonref = 1;
    case 1:
        frame->pict_type = AV_PICTURE_TYPE_P;
        break;
    default:
        FUNC0(avctx, AV_LOG_ERROR, "Invalid frame type.\n");
        return AVERROR_INVALIDDATA;
    }

    if (frame->pict_type == AV_PICTURE_TYPE_I) {
        /* unknown fields */
        if (s->frame_code == 0x50 || s->frame_code == 0x60) {
            int csum = FUNC3(bitbuf, 16);

            csum = FUNC2(bitbuf->buffer,
                                           bitbuf->size_in_bits >> 3,
                                           csum);

            FUNC1(avctx, "%s checksum (%02x) for packet data\n",
                    (csum == 0) ? "correct" : "incorrect", csum);
        }

        if ((s->frame_code ^ 0x10) >= 0x50) {
            uint8_t msg[257];

            FUNC8(bitbuf, msg);

            FUNC0(avctx, AV_LOG_INFO,
                   "embedded message:\n%s\n", ((char *)msg) + 1);
        }

        FUNC6(bitbuf, 2);
        FUNC6(bitbuf, 2);
        FUNC7(bitbuf);

        /* load frame size */
        frame_size_code = FUNC3(bitbuf, 3);

        if (frame_size_code == 7) {
            /* load width, height (12 bits each) */
            width  = FUNC3(bitbuf, 12);
            height = FUNC3(bitbuf, 12);

            if (!width || !height)
                return AVERROR_INVALIDDATA;
        } else {
            /* get width, height from table */
            width  = ff_svq1_frame_size_table[frame_size_code][0];
            height = ff_svq1_frame_size_table[frame_size_code][1];
        }
    }

    /* unknown fields */
    if (FUNC4(bitbuf)) {
        FUNC7(bitbuf);    /* use packet checksum if (1) */
        FUNC7(bitbuf);    /* component checksums after image data if (1) */

        if (FUNC3(bitbuf, 2) != 0)
            return AVERROR_INVALIDDATA;
    }

    if (FUNC4(bitbuf)) {
        FUNC7(bitbuf);
        FUNC6(bitbuf, 4);
        FUNC7(bitbuf);
        FUNC6(bitbuf, 2);

        if (FUNC5(bitbuf) < 0)
            return AVERROR_INVALIDDATA;
    }

    s->width  = width;
    s->height = height;
    return 0;
}