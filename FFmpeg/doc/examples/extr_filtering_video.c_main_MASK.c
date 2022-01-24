#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_1__** inputs; } ;
struct TYPE_18__ {int /*<<< orphan*/  best_effort_timestamp; int /*<<< orphan*/  pts; } ;
struct TYPE_17__ {scalar_t__ stream_index; } ;
struct TYPE_16__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_BUFFERSRC_FLAG_KEEP_REF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EAGAIN ; 
 int FUNC1 (TYPE_5__*,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_5__* buffersink_ctx ; 
 int /*<<< orphan*/  buffersrc_ctx ; 
 int /*<<< orphan*/  dec_ctx ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  filter_descr ; 
 int /*<<< orphan*/  filter_graph ; 
 int /*<<< orphan*/  fmt_ctx ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ video_stream_index ; 

int FUNC21(int argc, char **argv)
{
    int ret;
    AVPacket packet;
    AVFrame *frame;
    AVFrame *filt_frame;

    if (argc != 2) {
        FUNC17(stderr, "Usage: %s file\n", argv[0]);
        FUNC16(1);
    }

    frame = FUNC4();
    filt_frame = FUNC4();
    if (!frame || !filt_frame) {
        FUNC20("Could not allocate frame");
        FUNC16(1);
    }

    if ((ret = FUNC19(argv[1])) < 0)
        goto end;
    if ((ret = FUNC18(filter_descr)) < 0)
        goto end;

    /* read all packets */
    while (1) {
        if ((ret = FUNC9(fmt_ctx, &packet)) < 0)
            break;

        if (packet.stream_index == video_stream_index) {
            ret = FUNC12(dec_ctx, &packet);
            if (ret < 0) {
                FUNC7(NULL, AV_LOG_ERROR, "Error while sending a packet to the decoder\n");
                break;
            }

            while (ret >= 0) {
                ret = FUNC11(dec_ctx, frame);
                if (ret == FUNC0(EAGAIN) || ret == AVERROR_EOF) {
                    break;
                } else if (ret < 0) {
                    FUNC7(NULL, AV_LOG_ERROR, "Error while receiving a frame from the decoder\n");
                    goto end;
                }

                frame->pts = frame->best_effort_timestamp;

                /* push the decoded frame into the filtergraph */
                if (FUNC2(buffersrc_ctx, frame, AV_BUFFERSRC_FLAG_KEEP_REF) < 0) {
                    FUNC7(NULL, AV_LOG_ERROR, "Error while feeding the filtergraph\n");
                    break;
                }

                /* pull filtered frames from the filtergraph */
                while (1) {
                    ret = FUNC1(buffersink_ctx, filt_frame);
                    if (ret == FUNC0(EAGAIN) || ret == AVERROR_EOF)
                        break;
                    if (ret < 0)
                        goto end;
                    FUNC15(filt_frame, buffersink_ctx->inputs[0]->time_base);
                    FUNC6(filt_frame);
                }
                FUNC6(frame);
            }
        }
        FUNC8(&packet);
    }
end:
    FUNC13(&filter_graph);
    FUNC10(&dec_ctx);
    FUNC14(&fmt_ctx);
    FUNC5(&frame);
    FUNC5(&filt_frame);

    if (ret < 0 && ret != AVERROR_EOF) {
        FUNC17(stderr, "Error occurred: %s\n", FUNC3(ret));
        FUNC16(1);
    }

    FUNC16(0);
}