#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  buffersink_ctx; int /*<<< orphan*/  buffersrc_ctx; } ;
struct TYPE_9__ {int /*<<< orphan*/  pict_type; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_NONE ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (TYPE_1__*,unsigned int,int /*<<< orphan*/ *) ; 
 TYPE_3__* filter_ctx ; 

__attribute__((used)) static int FUNC7(AVFrame *frame, unsigned int stream_index)
{
    int ret;
    AVFrame *filt_frame;

    FUNC5(NULL, AV_LOG_INFO, "Pushing decoded frame to filters\n");
    /* push the decoded frame into the filtergraph */
    ret = FUNC2(filter_ctx[stream_index].buffersrc_ctx,
            frame, 0);
    if (ret < 0) {
        FUNC5(NULL, AV_LOG_ERROR, "Error while feeding the filtergraph\n");
        return ret;
    }

    /* pull filtered frames from the filtergraph */
    while (1) {
        filt_frame = FUNC3();
        if (!filt_frame) {
            ret = FUNC0(ENOMEM);
            break;
        }
        FUNC5(NULL, AV_LOG_INFO, "Pulling filtered frame from filters\n");
        ret = FUNC1(filter_ctx[stream_index].buffersink_ctx,
                filt_frame);
        if (ret < 0) {
            /* if no more frames for output - returns AVERROR(EAGAIN)
             * if flushed and no more frames for output - returns AVERROR_EOF
             * rewrite retcode to 0 to show it as normal procedure completion
             */
            if (ret == FUNC0(EAGAIN) || ret == AVERROR_EOF)
                ret = 0;
            FUNC4(&filt_frame);
            break;
        }

        filt_frame->pict_type = AV_PICTURE_TYPE_NONE;
        ret = FUNC6(filt_frame, stream_index, NULL);
        if (ret < 0)
            break;
    }

    return ret;
}