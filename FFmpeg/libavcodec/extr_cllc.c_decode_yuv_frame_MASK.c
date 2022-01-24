#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  VLC ;
struct TYPE_12__ {int height; } ;
struct TYPE_11__ {int /*<<< orphan*/ * linesize; scalar_t__** data; } ;
struct TYPE_10__ {TYPE_3__* avctx; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ CLLCContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(CLLCContext *ctx, GetBitContext *gb, AVFrame *pic)
{
    AVCodecContext *avctx = ctx->avctx;
    uint8_t block;
    uint8_t *dst[3];
    int pred[3];
    int ret;
    int i, j;
    VLC vlc[2];

    pred[0] = 0x80;
    pred[1] = 0x80;
    pred[2] = 0x80;

    dst[0] = pic->data[0];
    dst[1] = pic->data[1];
    dst[2] = pic->data[2];

    FUNC6(gb, 8);

    block = FUNC3(gb, 8);
    if (block) {
        FUNC1(ctx->avctx, "Blocked YUV");
        return AVERROR_PATCHWELCOME;
    }

    /* Read in code table for luma and chroma */
    for (i = 0; i < 2; i++) {
        ret = FUNC4(ctx, gb, &vlc[i]);
        if (ret < 0) {
            for (j = 0; j <= i; j++)
                FUNC2(&vlc[j]);

            FUNC0(ctx->avctx, AV_LOG_ERROR,
                   "Could not read code table %d.\n", i);
            return ret;
        }
    }

    /* Read in and restore every line */
    for (i = 0; i < avctx->height; i++) {
        FUNC5(ctx, gb, &pred[0], &vlc[0], dst[0], 0); /* Y */
        FUNC5(ctx, gb, &pred[1], &vlc[1], dst[1], 1); /* U */
        FUNC5(ctx, gb, &pred[2], &vlc[1], dst[2], 1); /* V */

        for (j = 0; j < 3; j++)
            dst[j] += pic->linesize[j];
    }

    for (i = 0; i < 2; i++)
        FUNC2(&vlc[i]);

    return 0;
}