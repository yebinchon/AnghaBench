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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int RTCP_RR ; 
 int RTP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC8(URLContext *rtp_handle)
{
    AVIOContext *pb;
    uint8_t *buf;
    int len;

    /* Send a small RTP packet */
    if (FUNC3(&pb) < 0)
        return;

    FUNC4(pb, (RTP_VERSION << 6));
    FUNC4(pb, 0); /* Payload type */
    FUNC5(pb, 0); /* Seq */
    FUNC6(pb, 0); /* Timestamp */
    FUNC6(pb, 0); /* SSRC */

    FUNC2(pb);
    len = FUNC1(pb, &buf);
    if ((len > 0) && buf)
        FUNC7(rtp_handle, buf, len);
    FUNC0(buf);

    /* Send a minimal RTCP RR */
    if (FUNC3(&pb) < 0)
        return;

    FUNC4(pb, (RTP_VERSION << 6));
    FUNC4(pb, RTCP_RR); /* receiver report */
    FUNC5(pb, 1); /* length in words - 1 */
    FUNC6(pb, 0); /* our own SSRC */

    FUNC2(pb);
    len = FUNC1(pb, &buf);
    if ((len > 0) && buf)
        FUNC7(rtp_handle, buf, len);
    FUNC0(buf);
}