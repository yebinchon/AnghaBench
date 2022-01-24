#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_22__ {int nb_streams; int /*<<< orphan*/ ** streams; } ;
struct TYPE_21__ {int nb_streams; int flags; int chapter_track; scalar_t__ mode; TYPE_2__* tracks; int /*<<< orphan*/  iods_skip; int /*<<< orphan*/  time; } ;
struct TYPE_20__ {scalar_t__ entry; scalar_t__ tref_tag; scalar_t__ tag; size_t src_track; int /*<<< orphan*/  timescale; int /*<<< orphan*/  track_duration; int /*<<< orphan*/  track_id; int /*<<< orphan*/  tref_id; int /*<<< orphan*/  st; TYPE_1__* par; int /*<<< orphan*/  time; } ;
struct TYPE_19__ {scalar_t__ codec_type; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  TYPE_3__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_PKT_DATA_FALLBACK_TRACK ; 
 int FF_MOV_FLAG_FRAGMENT ; 
 scalar_t__ FUNC0 (char,char,char,char) ; 
 scalar_t__ MODE_MOV ; 
 scalar_t__ MODE_PSP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC11 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(AVIOContext *pb, MOVMuxContext *mov,
                              AVFormatContext *s)
{
    int i;
    int64_t pos = FUNC3(pb);
    FUNC4(pb, 0); /* size placeholder*/
    FUNC6(pb, "moov");

    FUNC7(mov, s);

    for (i = 0; i < mov->nb_streams; i++) {
        if (mov->tracks[i].entry <= 0 && !(mov->flags & FF_MOV_FLAG_FRAGMENT))
            continue;

        mov->tracks[i].time     = mov->time;

        if (mov->tracks[i].entry)
            FUNC5(&mov->tracks[i]);
    }

    if (mov->chapter_track)
        for (i = 0; i < s->nb_streams; i++) {
            mov->tracks[i].tref_tag = FUNC0('c','h','a','p');
            mov->tracks[i].tref_id  = mov->tracks[mov->chapter_track].track_id;
        }
    for (i = 0; i < mov->nb_streams; i++) {
        MOVTrack *track = &mov->tracks[i];
        if (track->tag == FUNC0('r','t','p',' ')) {
            track->tref_tag = FUNC0('h','i','n','t');
            track->tref_id = mov->tracks[track->src_track].track_id;
        } else if (track->par->codec_type == AVMEDIA_TYPE_AUDIO) {
            int * fallback, size;
            fallback = (int*)FUNC2(track->st,
                                                     AV_PKT_DATA_FALLBACK_TRACK,
                                                     &size);
            if (fallback != NULL && size == sizeof(int)) {
                if (*fallback >= 0 && *fallback < mov->nb_streams) {
                    track->tref_tag = FUNC0('f','a','l','l');
                    track->tref_id = mov->tracks[*fallback].track_id;
                }
            }
        }
    }
    for (i = 0; i < mov->nb_streams; i++) {
        if (mov->tracks[i].tag == FUNC0('t','m','c','d')) {
            int src_trk = mov->tracks[i].src_track;
            mov->tracks[src_trk].tref_tag = mov->tracks[i].tag;
            mov->tracks[src_trk].tref_id  = mov->tracks[i].track_id;
            //src_trk may have a different timescale than the tmcd track
            mov->tracks[i].track_duration = FUNC1(mov->tracks[src_trk].track_duration,
                                                       mov->tracks[i].timescale,
                                                       mov->tracks[src_trk].timescale);
        }
    }

    FUNC10(pb, mov);
    if (mov->mode != MODE_MOV && !mov->iods_skip)
        FUNC8(pb, mov);
    for (i = 0; i < mov->nb_streams; i++) {
        if (mov->tracks[i].entry > 0 || mov->flags & FF_MOV_FLAG_FRAGMENT) {
            int ret = FUNC11(s, pb, mov, &(mov->tracks[i]), i < s->nb_streams ? s->streams[i] : NULL);
            if (ret < 0)
                return ret;
        }
    }
    if (mov->flags & FF_MOV_FLAG_FRAGMENT)
        FUNC9(pb, mov); /* QuickTime requires trak to precede this */

    if (mov->mode == MODE_PSP)
        FUNC13(pb, s);
    else
        FUNC12(pb, mov, s);

    return FUNC14(pb, pos);
}