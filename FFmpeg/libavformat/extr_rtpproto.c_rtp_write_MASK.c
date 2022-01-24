#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct sockaddr_storage {int /*<<< orphan*/  ss_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_6__ {int flags; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_7__ {int rtcp_fd; int rtp_fd; TYPE_1__* fec_hd; TYPE_1__* rtp_hd; TYPE_1__* rtcp_hd; int /*<<< orphan*/  last_rtcp_source_len; struct sockaddr_storage last_rtcp_source; int /*<<< orphan*/  last_rtp_source_len; struct sockaddr_storage last_rtp_source; scalar_t__ write_to_source; } ;
typedef  TYPE_2__ RTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVIO_FLAG_NONBLOCK ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC1 (int const) ; 
 int RTP_VERSION ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 () ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (TYPE_1__*,int const*,int) ; 
 scalar_t__ FUNC6 (struct sockaddr_storage*) ; 
 int FUNC7 (int,int const*,int,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_storage*,scalar_t__) ; 

__attribute__((used)) static int FUNC9(URLContext *h, const uint8_t *buf, int size)
{
    RTPContext *s = h->priv_data;
    int ret, ret_fec;
    URLContext *hd;

    if (size < 2)
        return FUNC0(EINVAL);

    if ((buf[0] & 0xc0) != (RTP_VERSION << 6))
        FUNC2(h, AV_LOG_WARNING, "Data doesn't look like RTP packets, "
                                  "make sure the RTP muxer is used\n");

    if (s->write_to_source) {
        int fd;
        struct sockaddr_storage *source, temp_source;
        socklen_t *source_len, temp_len;
        if (!s->last_rtp_source.ss_family && !s->last_rtcp_source.ss_family) {
            FUNC2(h, AV_LOG_ERROR,
                   "Unable to send packet to source, no packets received yet\n");
            // Intentionally not returning an error here
            return size;
        }

        if (FUNC1(buf[1])) {
            fd = s->rtcp_fd;
            source     = &s->last_rtcp_source;
            source_len = &s->last_rtcp_source_len;
        } else {
            fd = s->rtp_fd;
            source     = &s->last_rtp_source;
            source_len = &s->last_rtp_source_len;
        }
        if (!source->ss_family) {
            source      = &temp_source;
            source_len  = &temp_len;
            if (FUNC1(buf[1])) {
                temp_source = s->last_rtp_source;
                temp_len    = s->last_rtp_source_len;
                FUNC8(source, FUNC6(source) + 1);
                FUNC2(h, AV_LOG_INFO,
                       "Not received any RTCP packets yet, inferring peer port "
                       "from the RTP port\n");
            } else {
                temp_source = s->last_rtcp_source;
                temp_len    = s->last_rtcp_source_len;
                FUNC8(source, FUNC6(source) - 1);
                FUNC2(h, AV_LOG_INFO,
                       "Not received any RTP packets yet, inferring peer port "
                       "from the RTCP port\n");
            }
        }

        if (!(h->flags & AVIO_FLAG_NONBLOCK)) {
            ret = FUNC4(fd, 1);
            if (ret < 0)
                return ret;
        }
        ret = FUNC7(fd, buf, size, 0, (struct sockaddr *) source,
                     *source_len);

        return ret < 0 ? FUNC3() : ret;
    }

    if (FUNC1(buf[1])) {
        /* RTCP payload type */
        hd = s->rtcp_hd;
    } else {
        /* RTP payload type */
        hd = s->rtp_hd;
    }

    if ((ret = FUNC5(hd, buf, size)) < 0) {
        return ret;
    }

    if (s->fec_hd && !FUNC1(buf[1])) {
        if ((ret_fec = FUNC5(s->fec_hd, buf, size)) < 0) {
            FUNC2(h, AV_LOG_ERROR, "Failed to send FEC\n");
            return ret_fec;
        }
    }

    return ret;
}