#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
struct TYPE_9__ {int /*<<< orphan*/ * nb_prev_pkt; int /*<<< orphan*/ * prev_pkt; int /*<<< orphan*/  out_chunk_size; int /*<<< orphan*/  stream; } ;
struct TYPE_8__ {scalar_t__ type; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ RTMPPacket ;
typedef  TYPE_2__ RTMPContext ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 scalar_t__ RTMP_PT_INVOKE ; 
 int FUNC0 (TYPE_2__*,char*,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,double*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(RTMPContext *rt, RTMPPacket *pkt, int track)
{
    int ret;

    if (pkt->type == RTMP_PT_INVOKE && track) {
        GetByteContext gbc;
        char name[128];
        double pkt_id;
        int len;

        FUNC1(&gbc, pkt->data, pkt->size);
        if ((ret = FUNC3(&gbc, name, sizeof(name), &len)) < 0)
            goto fail;

        if ((ret = FUNC2(&gbc, &pkt_id)) < 0)
            goto fail;

        if ((ret = FUNC0(rt, name, pkt_id)) < 0)
            goto fail;
    }

    ret = FUNC5(rt->stream, pkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
fail:
    FUNC4(pkt);
    return ret;
}