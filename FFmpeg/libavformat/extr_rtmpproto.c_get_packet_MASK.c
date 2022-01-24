#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_3__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_21__ {scalar_t__ state; scalar_t__ bytes_read; scalar_t__ last_bytes_read; scalar_t__ receive_report_size; int /*<<< orphan*/  is_input; scalar_t__ do_reconnect; scalar_t__ last_timestamp; int /*<<< orphan*/ * nb_prev_pkt; int /*<<< orphan*/ * prev_pkt; int /*<<< orphan*/  in_chunk_size; int /*<<< orphan*/  stream; } ;
struct TYPE_20__ {scalar_t__ type; int /*<<< orphan*/  size; scalar_t__ timestamp; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ RTMPPacket ;
typedef  TYPE_3__ RTMPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ RTMP_PT_AUDIO ; 
 scalar_t__ RTMP_PT_METADATA ; 
 scalar_t__ RTMP_PT_NOTIFY ; 
 scalar_t__ RTMP_PT_VIDEO ; 
 scalar_t__ STATE_PLAYING ; 
 scalar_t__ STATE_PUBLISHING ; 
 scalar_t__ STATE_RECEIVING ; 
 scalar_t__ STATE_SEEKING ; 
 scalar_t__ STATE_SENDING ; 
 scalar_t__ STATE_STOPPED ; 
 int FUNC1 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,TYPE_3__*,scalar_t__) ; 
 int FUNC6 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC8 (TYPE_1__*,TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(URLContext *s, int for_header)
{
    RTMPContext *rt = s->priv_data;
    int ret;

    if (rt->state == STATE_STOPPED)
        return AVERROR_EOF;

    for (;;) {
        RTMPPacket rpkt = { 0 };
        if ((ret = FUNC4(rt->stream, &rpkt,
                                       rt->in_chunk_size, &rt->prev_pkt[0],
                                       &rt->nb_prev_pkt[0])) <= 0) {
            if (ret == 0) {
                return FUNC0(EAGAIN);
            } else {
                return FUNC0(EIO);
            }
        }

        // Track timestamp for later use
        rt->last_timestamp = rpkt.timestamp;

        rt->bytes_read += ret;
        if (rt->bytes_read - rt->last_bytes_read > rt->receive_report_size) {
            FUNC2(s, AV_LOG_DEBUG, "Sending bytes read report\n");
            if ((ret = FUNC5(s, rt, rpkt.timestamp + 1)) < 0) {
                FUNC3(&rpkt);
                return ret;
            }
            rt->last_bytes_read = rt->bytes_read;
        }

        ret = FUNC8(s, rt, &rpkt);

        // At this point we must check if we are in the seek state and continue
        // with the next packet. handle_invoke will get us out of this state
        // when the right message is encountered
        if (rt->state == STATE_SEEKING) {
            FUNC3(&rpkt);
            // We continue, let the natural flow of things happen:
            // AVERROR(EAGAIN) or handle_invoke gets us out of here
            continue;
        }

        if (ret < 0) {//serious error in current packet
            FUNC3(&rpkt);
            return ret;
        }
        if (rt->do_reconnect && for_header) {
            FUNC3(&rpkt);
            return 0;
        }
        if (rt->state == STATE_STOPPED) {
            FUNC3(&rpkt);
            return AVERROR_EOF;
        }
        if (for_header && (rt->state == STATE_PLAYING    ||
                           rt->state == STATE_PUBLISHING ||
                           rt->state == STATE_SENDING    ||
                           rt->state == STATE_RECEIVING)) {
            FUNC3(&rpkt);
            return 0;
        }
        if (!rpkt.size || !rt->is_input) {
            FUNC3(&rpkt);
            continue;
        }
        if (rpkt.type == RTMP_PT_VIDEO || rpkt.type == RTMP_PT_AUDIO) {
            ret = FUNC1(rt, &rpkt, 0);
            FUNC3(&rpkt);
            return ret;
        } else if (rpkt.type == RTMP_PT_NOTIFY) {
            ret = FUNC7(s, &rpkt);
            FUNC3(&rpkt);
            return ret;
        } else if (rpkt.type == RTMP_PT_METADATA) {
            ret = FUNC6(rt, &rpkt);
            FUNC3(&rpkt);
            return ret;
        }
        FUNC3(&rpkt);
    }
}