#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {int /*<<< orphan*/  codec_tag; } ;
struct TYPE_4__ {int tag; TYPE_3__* par; } ;
typedef  TYPE_1__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    int ret;
    int64_t pos = FUNC1(pb);
    FUNC2(pb, 0);
    FUNC3(pb, track->tag); // store it byteswapped
    track->par->codec_tag = FUNC0(track->tag >> 16);
    if ((ret = FUNC4(s, pb, track->par, 0)) < 0)
        return ret;
    return FUNC5(pb, pos);
}