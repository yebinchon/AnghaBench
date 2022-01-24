#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int flags; } ;
struct TYPE_18__ {TYPE_2__* context; TYPE_1__ buf; } ;
typedef  TYPE_3__ V4L2Buffer ;
struct TYPE_19__ {int key_frame; int /*<<< orphan*/  decode_error_flags; int /*<<< orphan*/  sample_aspect_ratio; int /*<<< orphan*/  width; int /*<<< orphan*/  height; int /*<<< orphan*/  pkt_dts; int /*<<< orphan*/  pts; int /*<<< orphan*/  color_trc; int /*<<< orphan*/  color_range; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  color_primaries; } ;
struct TYPE_17__ {int /*<<< orphan*/  name; int /*<<< orphan*/  sample_aspect_ratio; int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;
typedef  TYPE_4__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FF_DECODE_ERROR_INVALID_BITSTREAM ; 
 int V4L2_BUF_FLAG_ERROR ; 
 int V4L2_BUF_FLAG_KEYFRAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

int FUNC9(AVFrame *frame, V4L2Buffer *avbuf)
{
    int ret;

    FUNC0(frame);

    /* 1. get references to the actual data */
    ret = FUNC3(frame, avbuf);
    if (ret)
        return ret;

    /* 2. get frame information */
    frame->key_frame = !!(avbuf->buf.flags & V4L2_BUF_FLAG_KEYFRAME);
    frame->color_primaries = FUNC4(avbuf);
    frame->colorspace = FUNC6(avbuf);
    frame->color_range = FUNC5(avbuf);
    frame->color_trc = FUNC7(avbuf);
    frame->pts = FUNC8(avbuf);
    frame->pkt_dts = AV_NOPTS_VALUE;

    /* these values are updated also during re-init in v4l2_process_driver_event */
    frame->height = avbuf->context->height;
    frame->width = avbuf->context->width;
    frame->sample_aspect_ratio = avbuf->context->sample_aspect_ratio;

    /* 3. report errors upstream */
    if (avbuf->buf.flags & V4L2_BUF_FLAG_ERROR) {
        FUNC1(FUNC2(avbuf), AV_LOG_ERROR, "%s: driver decode error\n", avbuf->context->name);
        frame->decode_error_flags |= FF_DECODE_ERROR_INVALID_BITSTREAM;
    }

    return 0;
}