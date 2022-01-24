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
struct TYPE_5__ {int size; int stream_index; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(AVPacket *pkt, AVIOContext **dyn_buf, int stream_idx)
{
    int ret;
    FUNC1(pkt);

    pkt->size         = FUNC3(*dyn_buf, &pkt->data);
    pkt->stream_index = stream_idx;
    *dyn_buf = NULL;
    if ((ret = FUNC2(pkt, pkt->data, pkt->size)) < 0) {
        FUNC0(&pkt->data);
        return ret;
    }
    return pkt->size;
}