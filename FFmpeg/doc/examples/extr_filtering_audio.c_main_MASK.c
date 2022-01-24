#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ stream_index; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_BUFFERSRC_FLAG_KEEP_REF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ audio_stream_index ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  buffersink_ctx ; 
 int /*<<< orphan*/  buffersrc_ctx ; 
 int /*<<< orphan*/  dec_ctx ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  filter_descr ; 
 int /*<<< orphan*/  filter_graph ; 
 int /*<<< orphan*/  fmt_ctx ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 char* player ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC21(int argc, char **argv)
{
    int ret;
    AVPacket packet;
    AVFrame *frame = FUNC4();
    AVFrame *filt_frame = FUNC4();

    if (!frame || !filt_frame) {
        FUNC19("Could not allocate frame");
        FUNC15(1);
    }
    if (argc != 2) {
        FUNC16(stderr, "Usage: %s file | %s\n", argv[0], player);
        FUNC15(1);
    }

    if ((ret = FUNC18(argv[1])) < 0)
        goto end;
    if ((ret = FUNC17(filter_descr)) < 0)
        goto end;

    /* read all packets */
    while (1) {
        if ((ret = FUNC9(fmt_ctx, &packet)) < 0)
            break;

        if (packet.stream_index == audio_stream_index) {
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

                if (ret >= 0) {
                    /* push the audio data from decoded frame into the filtergraph */
                    if (FUNC2(buffersrc_ctx, frame, AV_BUFFERSRC_FLAG_KEEP_REF) < 0) {
                        FUNC7(NULL, AV_LOG_ERROR, "Error while feeding the audio filtergraph\n");
                        break;
                    }

                    /* pull filtered audio from the filtergraph */
                    while (1) {
                        ret = FUNC1(buffersink_ctx, filt_frame);
                        if (ret == FUNC0(EAGAIN) || ret == AVERROR_EOF)
                            break;
                        if (ret < 0)
                            goto end;
                        FUNC20(filt_frame);
                        FUNC6(filt_frame);
                    }
                    FUNC6(frame);
                }
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
        FUNC16(stderr, "Error occurred: %s\n", FUNC3(ret));
        FUNC15(1);
    }

    FUNC15(0);
}