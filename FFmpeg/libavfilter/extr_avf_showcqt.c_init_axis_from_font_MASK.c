#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  linesize; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {TYPE_2__* axis_frame; int /*<<< orphan*/  format; int /*<<< orphan*/  axis_h; int /*<<< orphan*/  width; int /*<<< orphan*/  ctx; int /*<<< orphan*/  font; int /*<<< orphan*/  fontfile; } ;
typedef  TYPE_1__ ShowCQTContext ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PIX_FMT_RGBA ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,TYPE_2__*,int) ; 
 int FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(ShowCQTContext *s)
{
    AVFrame *tmp = NULL;
    int ret = FUNC0(ENOMEM);
    int width = 1920, height = 32;
    int default_font = 0;

    if (!(tmp = FUNC1(AV_PIX_FMT_RGBA, width, height)))
        goto fail;

    if (!(s->axis_frame = FUNC2()))
        goto fail;

    if (FUNC9(s, tmp, s->fontfile) < 0 &&
        FUNC8(s, tmp, s->font) < 0 &&
        (default_font = 1, ret = FUNC7(tmp)) < 0)
        goto fail;

    if (default_font)
        width /= 2, height /= 2;

    if ((ret = FUNC6(s, tmp, default_font)) < 0)
        goto fail;

    if ((ret = FUNC5(s->axis_frame->data, s->axis_frame->linesize, s->width, s->axis_h,
                              FUNC4(s->format), tmp->data, tmp->linesize,
                              width, height, AV_PIX_FMT_RGBA, s->ctx)) < 0)
        goto fail;

    FUNC3(&tmp);
    s->axis_frame->width = s->width;
    s->axis_frame->height = s->axis_h;
    s->axis_frame->format = FUNC4(s->format);
    return 0;

fail:
    FUNC3(&tmp);
    FUNC3(&s->axis_frame);
    return ret;
}