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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  URLContext ;
typedef  int /*<<< orphan*/  RTMPPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC3(URLContext *h, RTMPPacket *p,
                        int chunk_size, RTMPPacket **prev_pkt, int *nb_prev_pkt)
{
    uint8_t hdr;

    if (FUNC2(h, &hdr, 1) != 1)
        return FUNC0(EIO);

    return FUNC1(h, p, chunk_size, prev_pkt,
                                        nb_prev_pkt, hdr);
}