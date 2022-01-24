#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_1__** streams; } ;
struct TYPE_14__ {TYPE_2__** streams; } ;
struct TYPE_13__ {scalar_t__ stream_index; scalar_t__ size; int /*<<< orphan*/ * data; } ;
struct TYPE_12__ {int /*<<< orphan*/  time_base; } ;
struct TYPE_11__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  encoder_ctx ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_5__* ifmt_ctx ; 
 TYPE_4__* ofmt_ctx ; 
 int /*<<< orphan*/  stderr ; 
 size_t video_stream ; 

__attribute__((used)) static int FUNC8(AVFrame *frame)
{
    int ret = 0;
    AVPacket enc_pkt;

    FUNC2(&enc_pkt);
    enc_pkt.data = NULL;
    enc_pkt.size = 0;

    if ((ret = FUNC6(encoder_ctx, frame)) < 0) {
        FUNC7(stderr, "Error during encoding. Error code: %s\n", FUNC1(ret));
        goto end;
    }
    while (1) {
        ret = FUNC5(encoder_ctx, &enc_pkt);
        if (ret)
            break;

        enc_pkt.stream_index = 0;
        FUNC4(&enc_pkt, ifmt_ctx->streams[video_stream]->time_base,
                             ofmt_ctx->streams[0]->time_base);
        ret = FUNC3(ofmt_ctx, &enc_pkt);
        if (ret < 0) {
            FUNC7(stderr, "Error during writing data to output file. "
                    "Error code: %s\n", FUNC1(ret));
            return -1;
        }
    }

end:
    if (ret == AVERROR_EOF)
        return 0;
    ret = ((ret == FUNC0(EAGAIN)) ? 0:-1);
    return ret;
}