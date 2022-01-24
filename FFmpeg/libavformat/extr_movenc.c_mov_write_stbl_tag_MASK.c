#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_14__ {scalar_t__ aes_ctr; } ;
struct TYPE_16__ {scalar_t__ has_keyframes; scalar_t__ entry; scalar_t__ mode; int flags; TYPE_1__* par; TYPE_13__ cenc; scalar_t__ has_disposable; } ;
struct TYPE_15__ {scalar_t__ codec_type; scalar_t__ codec_id; scalar_t__ codec_tag; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ AV_CODEC_ID_AAC ; 
 scalar_t__ AV_CODEC_ID_OPUS ; 
 scalar_t__ AV_CODEC_ID_TRUEHD ; 
 scalar_t__ FUNC0 (char,char,char,char) ; 
 scalar_t__ MODE_MOV ; 
 int /*<<< orphan*/  MOV_PARTIAL_SYNC_SAMPLE ; 
 int /*<<< orphan*/  MOV_SYNC_SAMPLE ; 
 int MOV_TRACK_CTTS ; 
 int MOV_TRACK_STPS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_13__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *s, AVIOContext *pb, MOVMuxContext *mov, MOVTrack *track)
{
    int64_t pos = FUNC1(pb);
    int ret = 0;

    FUNC2(pb, 0); /* size */
    FUNC4(pb, "stbl");
    if ((ret = FUNC10(s, pb, mov, track)) < 0)
        return ret;
    FUNC13(pb, track);
    if ((track->par->codec_type == AVMEDIA_TYPE_VIDEO ||
         track->par->codec_id == AV_CODEC_ID_TRUEHD ||
         track->par->codec_tag == FUNC0('r','t','p',' ')) &&
        track->has_keyframes && track->has_keyframes < track->entry)
        FUNC11(pb, track, MOV_SYNC_SAMPLE);
    if (track->par->codec_type == AVMEDIA_TYPE_VIDEO && track->has_disposable)
        FUNC7(pb, track);
    if (track->mode == MODE_MOV && track->flags & MOV_TRACK_STPS)
        FUNC11(pb, track, MOV_PARTIAL_SYNC_SAMPLE);
    if (track->par->codec_type == AVMEDIA_TYPE_VIDEO &&
        track->flags & MOV_TRACK_CTTS && track->entry) {

        if ((ret = FUNC6(s, pb, track)) < 0)
            return ret;
    }
    FUNC9(pb, track);
    FUNC12(pb, track);
    FUNC8(pb, track);
    if (track->cenc.aes_ctr) {
        FUNC3(&track->cenc, pb);
    }
    if (track->par->codec_id == AV_CODEC_ID_OPUS || track->par->codec_id == AV_CODEC_ID_AAC) {
        FUNC5(pb, track);
    }
    return FUNC14(pb, pos);
}