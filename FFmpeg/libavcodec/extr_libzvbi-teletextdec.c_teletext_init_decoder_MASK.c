#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int format_id; int last_pgno; int last_ass_alignment; int opacity; int /*<<< orphan*/  pgno; scalar_t__ transparent_bg; int /*<<< orphan*/  pts; int /*<<< orphan*/ * vbi; } ;
typedef  TYPE_1__ TeletextContext ;
struct TYPE_8__ {int width; int height; TYPE_1__* priv_data; } ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_BUG ; 
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int BITMAP_CHAR_HEIGHT ; 
 int BITMAP_CHAR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx)
{
    TeletextContext *ctx = avctx->priv_data;
    unsigned int maj, min, rev;

    FUNC3(&maj, &min, &rev);
    if (!(maj > 0 || min > 2 || min == 2 && rev >= 26)) {
        FUNC0(avctx, AV_LOG_ERROR, "decoder needs zvbi version >= 0.2.26.\n");
        return AVERROR_EXTERNAL;
    }

    if (ctx->format_id == 0) {
        avctx->width  = 41 * BITMAP_CHAR_WIDTH;
        avctx->height = 25 * BITMAP_CHAR_HEIGHT;
    }

    ctx->vbi = NULL;
    ctx->pts = AV_NOPTS_VALUE;
    ctx->last_pgno = -1;
    ctx->last_ass_alignment = 2;

    if (ctx->opacity == -1)
        ctx->opacity = ctx->transparent_bg ? 0 : 255;

    FUNC0(avctx, AV_LOG_VERBOSE, "page filter: %s\n", ctx->pgno);

    switch (ctx->format_id) {
        case 0:
            return 0;
        case 1:
            return FUNC1(avctx);
        case 2:
            return FUNC2(avctx);
    }
    return AVERROR_BUG;
}