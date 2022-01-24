#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {TYPE_1__* par; } ;
struct TYPE_4__ {int extradata_size; scalar_t__ extradata; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = FUNC4(pb);
    FUNC7(pb, 0);
    FUNC9(pb, "dOps");
    FUNC5(pb, 0); /* Version */
    if (track->par->extradata_size < 19) {
        FUNC3(s, AV_LOG_ERROR, "invalid extradata size\n");
        return AVERROR_INVALIDDATA;
    }
    /* extradata contains an Ogg OpusHead, other than byte-ordering and
       OpusHead's preceeding magic/version, OpusSpecificBox is currently
       identical. */
    FUNC5(pb, FUNC0(track->par->extradata + 9)); /* OuputChannelCount */
    FUNC6(pb, FUNC1(track->par->extradata + 10)); /* PreSkip */
    FUNC7(pb, FUNC2(track->par->extradata + 12)); /* InputSampleRate */
    FUNC6(pb, FUNC1(track->par->extradata + 16)); /* OutputGain */
    /* Write the rest of the header out without byte-swapping. */
    FUNC8(pb, track->par->extradata + 18, track->par->extradata_size - 18);

    return FUNC10(pb, pos);
}