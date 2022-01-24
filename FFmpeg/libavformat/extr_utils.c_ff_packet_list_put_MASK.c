#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  pkt; } ;
typedef  TYPE_1__ AVPacketList ;
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FF_PACKETLIST_FLAG_REF_PACKET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(AVPacketList **packet_buffer,
                       AVPacketList **plast_pktl,
                       AVPacket      *pkt, int flags)
{
    AVPacketList *pktl = FUNC2(sizeof(AVPacketList));
    int ret;

    if (!pktl)
        return FUNC0(ENOMEM);

    if (flags & FF_PACKETLIST_FLAG_REF_PACKET) {
        if ((ret = FUNC5(&pktl->pkt, pkt)) < 0) {
            FUNC1(pktl);
            return ret;
        }
    } else {
        ret = FUNC3(pkt);
        if (ret < 0) {
            FUNC1(pktl);
            return ret;
        }
        FUNC4(&pktl->pkt, pkt);
    }

    if (*packet_buffer)
        (*plast_pktl)->next = pktl;
    else
        *packet_buffer = pktl;

    /* Add the packet in the buffered packet list. */
    *plast_pktl = pktl;
    return 0;
}