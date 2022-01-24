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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {int /*<<< orphan*/ * streams; } ;
struct TYPE_5__ {int /*<<< orphan*/  track_id; int /*<<< orphan*/  src_track; TYPE_2__* rtp_ctx; } ;
typedef  TYPE_1__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(AVIOContext *pb, MOVTrack *track)
{
    AVFormatContext *ctx = track->rtp_ctx;
    char buf[1000] = "";
    int len;

    FUNC3(buf, sizeof(buf), ctx->streams[0], track->src_track,
                       NULL, NULL, 0, 0, ctx);
    FUNC0(buf, sizeof(buf), "a=control:streamid=%d\r\n", track->track_id);
    len = FUNC5(buf);

    FUNC1(pb, len + 24);
    FUNC4(pb, "udta");
    FUNC1(pb, len + 16);
    FUNC4(pb, "hnti");
    FUNC1(pb, len + 8);
    FUNC4(pb, "sdp ");
    FUNC2(pb, buf, len);
    return len + 24;
}