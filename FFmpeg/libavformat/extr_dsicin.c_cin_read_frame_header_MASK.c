#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ error; } ;
struct TYPE_10__ {int video_frame_size; int audio_frame_size; int /*<<< orphan*/  pal_colors_count; void* audio_frame_type; void* video_frame_type; } ;
struct TYPE_11__ {TYPE_1__ frame_header; } ;
typedef  TYPE_1__ CinFrameHeader ;
typedef  TYPE_2__ CinDemuxContext ;
typedef  TYPE_3__ AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 void* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(CinDemuxContext *cin, AVIOContext *pb) {
    CinFrameHeader *hdr = &cin->frame_header;

    hdr->video_frame_type = FUNC2(pb);
    hdr->audio_frame_type = FUNC2(pb);
    hdr->pal_colors_count = FUNC3(pb);
    hdr->video_frame_size = FUNC4(pb);
    hdr->audio_frame_size = FUNC4(pb);

    if (FUNC1(pb) || pb->error)
        return FUNC0(EIO);

    if (FUNC4(pb) != 0xAA55AA55)
        return AVERROR_INVALIDDATA;
    if (hdr->video_frame_size < 0 || hdr->audio_frame_size < 0)
        return AVERROR_INVALIDDATA;

    return 0;
}