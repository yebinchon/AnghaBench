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
struct TYPE_5__ {scalar_t__ size; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *c, AVFrame *frame)
{
    AVPacket pkt = { 0 };
    int ret;
    int size = 0;

    FUNC1(&pkt);

    ret = FUNC4(c, frame);
    if (ret < 0)
        return ret;

    do {
        ret = FUNC3(c, &pkt);
        if (ret >= 0) {
            size += pkt.size;
            FUNC2(&pkt);
        } else if (ret < 0 && ret != FUNC0(EAGAIN) && ret != AVERROR_EOF)
            return ret;
    } while (ret >= 0);

    return size;
}