#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  VP56RangeCoder ;
struct TYPE_9__ {int /*<<< orphan*/  macroblocks; TYPE_5__* avctx; TYPE_1__** frames; int /*<<< orphan*/  c; } ;
typedef  TYPE_2__ VP56Context ;
struct TYPE_10__ {int coded_width; int coded_height; } ;
struct TYPE_8__ {int key_frame; } ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 size_t VP56_FRAME_CURRENT ; 
 int VP56_SIZE_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*) ; 
 int FUNC2 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(VP56Context *s, const uint8_t *buf, int buf_size)
{
    VP56RangeCoder *c = &s->c;
    int rows, cols;
    int ret;

    ret = FUNC4(&s->c, buf, buf_size);
    if (ret < 0)
        return ret;
    s->frames[VP56_FRAME_CURRENT]->key_frame = !FUNC5(c);
    FUNC5(c);
    FUNC3(s, FUNC6(c, 6));
    if (s->frames[VP56_FRAME_CURRENT]->key_frame)
    {
        int render_x, render_y;

        FUNC6(c, 8);
        if(FUNC6(c, 5) > 5)
            return AVERROR_INVALIDDATA;
        FUNC6(c, 2);
        if (FUNC5(c)) {
            FUNC1(s->avctx, "Interlacing");
            return AVERROR_PATCHWELCOME;
        }
        rows = FUNC6(c, 8);  /* number of stored macroblock rows */
        cols = FUNC6(c, 8);  /* number of stored macroblock cols */
        if (!rows || !cols) {
            FUNC0(s->avctx, AV_LOG_ERROR, "Invalid size %dx%d\n",
                   cols << 4, rows << 4);
            return AVERROR_INVALIDDATA;
        }
        render_y = FUNC6(c, 8);  /* number of displayed macroblock rows */
        render_x = FUNC6(c, 8);  /* number of displayed macroblock cols */
        if (render_x == 0 || render_x > cols ||
            render_y == 0 || render_y > rows)
            return AVERROR_INVALIDDATA;
        FUNC6(c, 2);
        if (!s->macroblocks || /* first frame */
            16*cols != s->avctx->coded_width ||
            16*rows != s->avctx->coded_height) {
            int ret = FUNC2(s->avctx, 16 * cols, 16 * rows);
            if (ret < 0)
                return ret;
            return VP56_SIZE_CHANGE;
        }
    } else if (!s->macroblocks)
        return AVERROR_INVALIDDATA;
    return 0;
}