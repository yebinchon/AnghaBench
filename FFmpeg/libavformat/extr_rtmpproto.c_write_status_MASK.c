#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  statusmsg ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_12__ {int /*<<< orphan*/ * nb_prev_pkt; int /*<<< orphan*/ * prev_pkt; int /*<<< orphan*/  out_chunk_size; int /*<<< orphan*/  stream; } ;
struct TYPE_11__ {int size; int /*<<< orphan*/ * data; int /*<<< orphan*/  extra; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ RTMPPacket ;
typedef  TYPE_3__ RTMPContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  RTMP_PKTDATA_DEFAULT_SIZE ; 
 int /*<<< orphan*/  RTMP_PT_INVOKE ; 
 int /*<<< orphan*/  RTMP_SYSTEM_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char const*) ; 

__attribute__((used)) static int FUNC11(URLContext *s, RTMPPacket *pkt,
                        const char *status, const char *filename)
{
    RTMPContext *rt = s->priv_data;
    RTMPPacket spkt = { 0 };
    char statusmsg[128];
    uint8_t *pp;
    int ret;

    if ((ret = FUNC7(&spkt, RTMP_SYSTEM_CHANNEL,
                                     RTMP_PT_INVOKE, 0,
                                     RTMP_PKTDATA_DEFAULT_SIZE)) < 0) {
        FUNC0(s, AV_LOG_ERROR, "Unable to create response packet\n");
        return ret;
    }

    pp = spkt.data;
    spkt.extra = pkt->extra;
    FUNC6(&pp, "onStatus");
    FUNC3(&pp, 0);
    FUNC2(&pp);

    FUNC5(&pp);
    FUNC1(&pp, "level");
    FUNC6(&pp, "status");
    FUNC1(&pp, "code");
    FUNC6(&pp, status);
    FUNC1(&pp, "description");
    FUNC10(statusmsg, sizeof(statusmsg),
             "%s is now published", filename);
    FUNC6(&pp, statusmsg);
    FUNC1(&pp, "details");
    FUNC6(&pp, filename);
    FUNC4(&pp);

    spkt.size = pp - spkt.data;
    ret = FUNC9(rt->stream, &spkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    FUNC8(&spkt);

    return ret;
}