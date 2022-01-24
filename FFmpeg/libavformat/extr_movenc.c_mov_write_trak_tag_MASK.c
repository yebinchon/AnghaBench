#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_23__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_25__ {scalar_t__ num; } ;
struct TYPE_29__ {TYPE_23__ sample_aspect_ratio; } ;
struct TYPE_28__ {int flags; scalar_t__ use_editlist; int /*<<< orphan*/  fc; } ;
struct TYPE_27__ {int entry; int chunkCount; scalar_t__ start_dts; scalar_t__ mode; scalar_t__ tag; TYPE_2__* par; scalar_t__ tref_tag; TYPE_1__* cluster; } ;
struct TYPE_26__ {scalar_t__ codec_type; } ;
struct TYPE_24__ {scalar_t__ dts; } ;
typedef  TYPE_3__ MOVTrack ;
typedef  TYPE_4__ MOVMuxContext ;
typedef  TYPE_5__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int FF_MOV_FLAG_EMPTY_MOOV ; 
 scalar_t__ FUNC0 (char,char,char,char) ; 
 scalar_t__ MODE_MOV ; 
 scalar_t__ MODE_PSP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 double FUNC3 (TYPE_23__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(AVFormatContext *s, AVIOContext *pb, MOVMuxContext *mov,
                              MOVTrack *track, AVStream *st)
{
    int64_t pos = FUNC4(pb);
    int entry_backup = track->entry;
    int chunk_backup = track->chunkCount;
    int ret;

    /* If we want to have an empty moov, but some samples already have been
     * buffered (delay_moov), pretend that no samples have been written yet. */
    if (mov->flags & FF_MOV_FLAG_EMPTY_MOOV)
        track->chunkCount = track->entry = 0;

    FUNC5(pb, 0); /* size */
    FUNC6(pb, "trak");
    FUNC11(pb, mov, track, st);

    FUNC1(mov->use_editlist >= 0);

    if (track->start_dts != AV_NOPTS_VALUE) {
        if (mov->use_editlist)
            FUNC8(pb, mov, track);  // PSP Movies and several other cases require edts box
        else if ((track->entry && track->cluster[0].dts) || track->mode == MODE_PSP || FUNC7(track))
            FUNC2(mov->fc, AV_LOG_WARNING,
                   "Not writing any edit list even though one would have been required\n");
    }

    if (track->tref_tag)
        FUNC13(pb, track);

    if ((ret = FUNC9(s, pb, mov, track)) < 0)
        return ret;
    if (track->mode == MODE_PSP)
        FUNC15(pb, track); // PSP Movies require this uuid box
    if (track->tag == FUNC0('r','t','p',' '))
        FUNC14(pb, track);
    if (track->mode == MODE_MOV) {
        if (track->par->codec_type == AVMEDIA_TYPE_VIDEO) {
            double sample_aspect_ratio = FUNC3(st->sample_aspect_ratio);
            if (st->sample_aspect_ratio.num && 1.0 != sample_aspect_ratio) {
                FUNC10(pb, track);
            }
        }
        if (FUNC7(track) && st->sample_aspect_ratio.num) {
            FUNC10(pb, track);
        }
    }
    FUNC12(pb, mov, st);
    track->entry = entry_backup;
    track->chunkCount = chunk_backup;
    return FUNC16(pb, pos);
}