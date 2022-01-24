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
typedef  int uint16_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  URLContext ;
struct TYPE_6__ {scalar_t__ last_feedback_time; scalar_t__ ssrc; int /*<<< orphan*/  dynamic_protocol_context; TYPE_1__* handler; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* need_keyframe ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ RTPDemuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ MIN_FEEDBACK_INTERVAL ; 
 int RTCP_PSFB ; 
 int RTCP_RTPFB ; 
 int RTP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (TYPE_2__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(RTPDemuxContext *s, URLContext *fd,
                              AVIOContext *avio)
{
    int len, need_keyframe, missing_packets;
    AVIOContext *pb;
    uint8_t *buf;
    int64_t now;
    uint16_t first_missing = 0, missing_mask = 0;

    if (!fd && !avio)
        return -1;

    need_keyframe = s->handler && s->handler->need_keyframe &&
                    s->handler->need_keyframe(s->dynamic_protocol_context);
    missing_packets = FUNC9(s, &first_missing, &missing_mask);

    if (!need_keyframe && !missing_packets)
        return 0;

    /* Send new feedback if enough time has elapsed since the last
     * feedback packet. */

    now = FUNC1();
    if (s->last_feedback_time &&
        (now - s->last_feedback_time) < MIN_FEEDBACK_INTERVAL)
        return 0;
    s->last_feedback_time = now;

    if (!fd)
        pb = avio;
    else if (FUNC4(&pb) < 0)
        return -1;

    if (need_keyframe) {
        FUNC5(pb, (RTP_VERSION << 6) | 1); /* PLI */
        FUNC5(pb, RTCP_PSFB);
        FUNC6(pb, 2); /* length in words - 1 */
        // our own SSRC: we use the server's SSRC + 1 to avoid conflicts
        FUNC7(pb, s->ssrc + 1);
        FUNC7(pb, s->ssrc); // server SSRC
    }

    if (missing_packets) {
        FUNC5(pb, (RTP_VERSION << 6) | 1); /* NACK */
        FUNC5(pb, RTCP_RTPFB);
        FUNC6(pb, 3); /* length in words - 1 */
        FUNC7(pb, s->ssrc + 1);
        FUNC7(pb, s->ssrc); // server SSRC

        FUNC6(pb, first_missing);
        FUNC6(pb, missing_mask);
    }

    FUNC3(pb);
    if (!fd)
        return 0;
    len = FUNC2(pb, &buf);
    if (len > 0 && buf) {
        FUNC8(fd, buf, len);
        FUNC0(buf);
    }
    return 0;
}