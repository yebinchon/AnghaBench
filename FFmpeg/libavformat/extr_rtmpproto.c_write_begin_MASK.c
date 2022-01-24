#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_11__ {int /*<<< orphan*/ * nb_prev_pkt; int /*<<< orphan*/ * prev_pkt; int /*<<< orphan*/  out_chunk_size; int /*<<< orphan*/  stream; int /*<<< orphan*/  nb_streamid; } ;
struct TYPE_10__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ RTMPPacket ;
typedef  TYPE_3__ RTMPContext ;
typedef  int /*<<< orphan*/  PutByteContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  RTMP_NETWORK_CHANNEL ; 
 int /*<<< orphan*/  RTMP_PT_USER_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(URLContext *s)
{
    RTMPContext *rt = s->priv_data;
    PutByteContext pbc;
    RTMPPacket spkt = { 0 };
    int ret;

    // Send Stream Begin 1
    if ((ret = FUNC4(&spkt, RTMP_NETWORK_CHANNEL,
                                     RTMP_PT_USER_CONTROL, 0, 6)) < 0) {
        FUNC0(s, AV_LOG_ERROR, "Unable to create response packet\n");
        return ret;
    }

    FUNC1(&pbc, spkt.data, spkt.size);
    FUNC2(&pbc, 0);          // 0 -> Stream Begin
    FUNC3(&pbc, rt->nb_streamid);

    ret = FUNC6(rt->stream, &spkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);

    FUNC5(&spkt);

    return ret;
}