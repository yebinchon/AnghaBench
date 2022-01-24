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
typedef  int /*<<< orphan*/  pkt ;
struct TYPE_3__ {int buffer_size; int nports; int /*<<< orphan*/  new_pkts; } ;
typedef  TYPE_1__ JackData ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(JackData *self, AVFormatContext *context)
{
    AVPacket pkt;
    int test, pkt_size = self->buffer_size * self->nports * sizeof(float);

    /* Supply the process callback with new empty packets, by filling the new
     * packets FIFO buffer with as many packets as possible. process_callback()
     * can't do this by itself, because it can't allocate memory in realtime. */
    while (FUNC1(self->new_pkts) >= sizeof(pkt)) {
        if ((test = FUNC3(&pkt, pkt_size)) < 0) {
            FUNC2(context, AV_LOG_ERROR, "Could not create packet of size %d\n", pkt_size);
            return test;
        }
        FUNC0(self->new_pkts, &pkt, sizeof(pkt), NULL);
    }
    return 0;
}