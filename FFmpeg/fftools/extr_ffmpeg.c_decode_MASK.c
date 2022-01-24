#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(AVCodecContext *avctx, AVFrame *frame, int *got_frame, AVPacket *pkt)
{
    int ret;

    *got_frame = 0;

    if (pkt) {
        ret = FUNC2(avctx, pkt);
        // In particular, we don't expect AVERROR(EAGAIN), because we read all
        // decoded frames with avcodec_receive_frame() until done.
        if (ret < 0 && ret != AVERROR_EOF)
            return ret;
    }

    ret = FUNC1(avctx, frame);
    if (ret < 0 && ret != FUNC0(EAGAIN))
        return ret;
    if (ret >= 0)
        *got_frame = 1;

    return 0;
}