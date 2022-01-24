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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {scalar_t__ base_timestamp; scalar_t__ last_rtcp_timestamp; int /*<<< orphan*/  rtcp_ts_offset; int /*<<< orphan*/  last_rtcp_ntp_time; int /*<<< orphan*/  first_rtcp_ntp_time; int /*<<< orphan*/  last_rtcp_reception_time; int /*<<< orphan*/  ic; } ;
typedef  TYPE_1__ RTPDemuxContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int FUNC0 (unsigned char const*) ; 
 scalar_t__ FUNC1 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*) ; 
 int FUNC3 (int,int) ; 
#define  RTCP_BYE 129 
#define  RTCP_SR 128 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(RTPDemuxContext *s, const unsigned char *buf,
                             int len)
{
    int payload_len;
    while (len >= 4) {
        payload_len = FUNC3(len, (FUNC0(buf + 2) + 1) * 4);

        switch (buf[1]) {
        case RTCP_SR:
            if (payload_len < 20) {
                FUNC5(s->ic, AV_LOG_ERROR, "Invalid RTCP SR packet length\n");
                return AVERROR_INVALIDDATA;
            }

            s->last_rtcp_reception_time = FUNC4();
            s->last_rtcp_ntp_time  = FUNC2(buf + 8);
            s->last_rtcp_timestamp = FUNC1(buf + 16);
            if (s->first_rtcp_ntp_time == AV_NOPTS_VALUE) {
                s->first_rtcp_ntp_time = s->last_rtcp_ntp_time;
                if (!s->base_timestamp)
                    s->base_timestamp = s->last_rtcp_timestamp;
                s->rtcp_ts_offset = (int32_t)(s->last_rtcp_timestamp - s->base_timestamp);
            }

            break;
        case RTCP_BYE:
            return -RTCP_BYE;
        }

        buf += payload_len;
        len -= payload_len;
    }
    return -1;
}