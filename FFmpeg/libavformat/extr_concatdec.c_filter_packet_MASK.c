#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ bsf; } ;
typedef  TYPE_1__ ConcatStream ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EAGAIN ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *avf, ConcatStream *cs, AVPacket *pkt)
{
    int ret;

    if (cs->bsf) {
        ret = FUNC2(cs->bsf, pkt);
        if (ret < 0) {
            FUNC3(avf, AV_LOG_ERROR, "h264_mp4toannexb filter "
                   "failed to send input packet\n");
            FUNC4(pkt);
            return ret;
        }

        while (!ret)
            ret = FUNC1(cs->bsf, pkt);

        if (ret < 0 && (ret != FUNC0(EAGAIN) && ret != AVERROR_EOF)) {
            FUNC3(avf, AV_LOG_ERROR, "h264_mp4toannexb filter "
                   "failed to receive output packet\n");
            return ret;
        }
    }
    return 0;
}