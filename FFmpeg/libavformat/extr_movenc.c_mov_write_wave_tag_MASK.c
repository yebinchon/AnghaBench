#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_11__ {TYPE_1__* par; int /*<<< orphan*/  tag; } ;
struct TYPE_10__ {scalar_t__ codec_id; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_AAC ; 
 scalar_t__ AV_CODEC_ID_AC3 ; 
 scalar_t__ AV_CODEC_ID_ADPCM_IMA_WAV ; 
 scalar_t__ AV_CODEC_ID_ADPCM_MS ; 
 scalar_t__ AV_CODEC_ID_ALAC ; 
 scalar_t__ AV_CODEC_ID_AMR_NB ; 
 scalar_t__ AV_CODEC_ID_EAC3 ; 
 scalar_t__ AV_CODEC_ID_QDM2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = FUNC0(pb);

    FUNC1(pb, 0);     /* size */
    FUNC3(pb, "wave");

    if (track->par->codec_id != AV_CODEC_ID_QDM2) {
    FUNC1(pb, 12);    /* size */
    FUNC3(pb, "frma");
    FUNC2(pb, track->tag);
    }

    if (track->par->codec_id == AV_CODEC_ID_AAC) {
        /* useless atom needed by mplayer, ipod, not needed by quicktime */
        FUNC1(pb, 12); /* size */
        FUNC3(pb, "mp4a");
        FUNC1(pb, 0);
        FUNC11(pb, track);
    } else if (FUNC5(track->par->codec_id))  {
      FUNC9(pb);
    } else if (FUNC4(track->par->codec_id))  {
      FUNC10(pb);
    } else if (track->par->codec_id == AV_CODEC_ID_AMR_NB) {
        FUNC7(pb, track);
    } else if (track->par->codec_id == AV_CODEC_ID_AC3) {
        FUNC6(s, pb, track);
    } else if (track->par->codec_id == AV_CODEC_ID_EAC3) {
        FUNC8(s, pb, track);
    } else if (track->par->codec_id == AV_CODEC_ID_ALAC ||
               track->par->codec_id == AV_CODEC_ID_QDM2) {
        FUNC12(pb, track);
    } else if (track->par->codec_id == AV_CODEC_ID_ADPCM_MS ||
               track->par->codec_id == AV_CODEC_ID_ADPCM_IMA_WAV) {
        FUNC13(s, pb, track);
    }

    FUNC1(pb, 8);     /* size */
    FUNC1(pb, 0);     /* null tag */

    return FUNC14(pb, pos);
}