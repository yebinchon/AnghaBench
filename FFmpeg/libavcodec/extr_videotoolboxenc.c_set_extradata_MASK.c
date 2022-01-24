#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  int /*<<< orphan*/  CMVideoFormatDescriptionRef ;
typedef  int /*<<< orphan*/  CMSampleBufferRef ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXTERNAL ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, CMSampleBufferRef sample_buffer)
{
    CMVideoFormatDescriptionRef vid_fmt;
    size_t total_size;
    int status;

    vid_fmt = FUNC1(sample_buffer);
    if (!vid_fmt) {
        FUNC2(avctx, AV_LOG_ERROR, "No video format.\n");
        return AVERROR_EXTERNAL;
    }

    status = FUNC5(avctx, vid_fmt, &total_size);
    if (status) {
        FUNC2(avctx, AV_LOG_ERROR, "Could not get parameter sets.\n");
        return status;
    }

    avctx->extradata = FUNC3(total_size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!avctx->extradata) {
        return FUNC0(ENOMEM);
    }
    avctx->extradata_size = total_size;

    status = FUNC4(avctx, vid_fmt, avctx->extradata, total_size);

    if (status) {
        FUNC2(avctx, AV_LOG_ERROR, "Could not copy param sets.\n");
        return status;
    }

    return 0;
}