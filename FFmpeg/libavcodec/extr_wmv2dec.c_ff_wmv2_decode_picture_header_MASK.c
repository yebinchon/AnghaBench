#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Wmv2Context ;
struct TYPE_3__ {scalar_t__ picture_number; scalar_t__ pict_type; int chroma_qscale; int qscale; int mb_width; int mb_height; int /*<<< orphan*/  gb; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ MpegEncContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 scalar_t__ AV_PICTURE_TYPE_I ; 
 int FUNC0 (int,int) ; 
 int FRAME_SKIPPED ; 
 int SKIP_TYPE_COL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 

int FUNC6(MpegEncContext *s)
{
    Wmv2Context *const w = (Wmv2Context *) s;
    int code;

    if (s->picture_number == 0)
        FUNC2(w);

    s->pict_type = FUNC4(&s->gb) + 1;
    if (s->pict_type == AV_PICTURE_TYPE_I) {
        code = FUNC3(&s->gb, 7);
        FUNC1(s->avctx, AV_LOG_DEBUG, "I7:%X/\n", code);
    }
    s->chroma_qscale = s->qscale = FUNC3(&s->gb, 5);
    if (s->qscale <= 0)
        return AVERROR_INVALIDDATA;

    if (s->pict_type != AV_PICTURE_TYPE_I && FUNC5(&s->gb, 1)) {
        GetBitContext gb = s->gb;
        int skip_type = FUNC3(&gb, 2);
        int run = skip_type == SKIP_TYPE_COL ? s->mb_width : s->mb_height;

        while (run > 0) {
            int block = FUNC0(run, 25);
            if (FUNC3(&gb, block) + 1 != 1<<block)
                break;
            run -= block;
        }
        if (!run)
            return FRAME_SKIPPED;
    }

    return 0;
}