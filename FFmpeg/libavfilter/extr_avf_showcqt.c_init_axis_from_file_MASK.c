#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {int /*<<< orphan*/  format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  linesize; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {TYPE_3__* axis_frame; int /*<<< orphan*/  format; int /*<<< orphan*/  axis_h; int /*<<< orphan*/  width; int /*<<< orphan*/  ctx; int /*<<< orphan*/  axisfile; } ;
typedef  TYPE_1__ ShowCQTContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ **,int*,int*,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(ShowCQTContext *s)
{
    uint8_t *tmp_data[4] = { NULL };
    int tmp_linesize[4];
    enum AVPixelFormat tmp_format;
    int tmp_w, tmp_h, ret;

    if ((ret = FUNC5(tmp_data, tmp_linesize, &tmp_w, &tmp_h, &tmp_format,
                             s->axisfile, s->ctx)) < 0)
        goto error;

    ret = FUNC0(ENOMEM);
    if (!(s->axis_frame = FUNC1()))
        goto error;

    if ((ret = FUNC6(s->axis_frame->data, s->axis_frame->linesize, s->width, s->axis_h,
                              FUNC4(s->format), tmp_data, tmp_linesize, tmp_w, tmp_h,
                              tmp_format, s->ctx)) < 0)
        goto error;

    s->axis_frame->width = s->width;
    s->axis_frame->height = s->axis_h;
    s->axis_frame->format = FUNC4(s->format);
    FUNC3(tmp_data);
    return 0;

error:
    FUNC2(&s->axis_frame);
    FUNC3(tmp_data);
    return ret;
}