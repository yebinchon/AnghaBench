#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int channels; } ;
struct TYPE_11__ {size_t prev_window_type; size_t window_type; int num_windows; int is_long; int* grouping; TYPE_9__* avctx; scalar_t__ ms_present; TYPE_1__* modes; int /*<<< orphan*/  num_bands; int /*<<< orphan*/  band_start; } ;
struct TYPE_10__ {int num_windows; int /*<<< orphan*/  num_bands; int /*<<< orphan*/  band_start; } ;
typedef  TYPE_2__ On2AVCContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 size_t WINDOW_TYPE_8SHORT ; 
 size_t WINDOW_TYPE_EXT4 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(On2AVCContext *c, const uint8_t *buf,
                                  int buf_size, AVFrame *dst, int offset)
{
    GetBitContext gb;
    int i, ret;

    if ((ret = FUNC3(&gb, buf, buf_size)) < 0)
        return ret;

    if (FUNC2(&gb)) {
        FUNC0(c->avctx, AV_LOG_ERROR, "enh bit set\n");
        return AVERROR_INVALIDDATA;
    }
    c->prev_window_type = c->window_type;
    c->window_type      = FUNC1(&gb, 3);

    c->band_start  = c->modes[c->window_type].band_start;
    c->num_windows = c->modes[c->window_type].num_windows;
    c->num_bands   = c->modes[c->window_type].num_bands;
    c->is_long     = (c->window_type != WINDOW_TYPE_8SHORT);

    c->grouping[0] = 1;
    for (i = 1; i < c->num_windows; i++)
        c->grouping[i] = !FUNC2(&gb);

    FUNC6(c, &gb);
    for (i = 0; i < c->avctx->channels; i++)
        if ((ret = FUNC5(c, &gb, i)) < 0)
            return AVERROR_INVALIDDATA;
    if (c->avctx->channels == 2 && c->ms_present)
        FUNC4(c);
    if (c->window_type < WINDOW_TYPE_EXT4) {
        for (i = 0; i < c->avctx->channels; i++)
            FUNC7(c, i, dst, offset);
    } else {
        FUNC8(c, dst, offset);
    }

    return 0;
}