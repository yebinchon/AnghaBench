#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int payload_type; int seq; int octet_count; int /*<<< orphan*/  packet_count; int /*<<< orphan*/  ssrc; int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_1__ RTPMuxContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int RTP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

void FUNC6(AVFormatContext *s1, const uint8_t *buf1, int len, int m)
{
    RTPMuxContext *s = s1->priv_data;

    FUNC0(s1, AV_LOG_TRACE, "rtp_send_data size=%d\n", len);

    /* build the RTP header */
    FUNC2(s1->pb, RTP_VERSION << 6);
    FUNC2(s1->pb, (s->payload_type & 0x7f) | ((m & 0x01) << 7));
    FUNC3(s1->pb, s->seq);
    FUNC4(s1->pb, s->timestamp);
    FUNC4(s1->pb, s->ssrc);

    FUNC5(s1->pb, buf1, len);
    FUNC1(s1->pb);

    s->seq = (s->seq + 1) & 0xffff;
    s->octet_count += len;
    s->packet_count++;
}