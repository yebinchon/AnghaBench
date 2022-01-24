#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int duration; int /*<<< orphan*/  time_base; int /*<<< orphan*/  index; TYPE_2__* codecpar; TYPE_4__* priv_data; } ;
struct TYPE_20__ {int metadata_sets_count; int partitions_count; int /*<<< orphan*/  fc; TYPE_5__* partitions; TYPE_1__** metadata_sets; } ;
struct TYPE_19__ {scalar_t__ body_sid; int edit_unit_byte_count; int index_duration; scalar_t__ index_sid; int /*<<< orphan*/  index_edit_rate; scalar_t__ index_start_position; scalar_t__ type; } ;
struct TYPE_16__ {int length; } ;
struct TYPE_18__ {scalar_t__ body_sid; TYPE_3__ first_essence_klv; } ;
struct TYPE_17__ {scalar_t__ wrapping; scalar_t__ body_sid; scalar_t__ index_sid; } ;
struct TYPE_15__ {scalar_t__ codec_type; int channels; int /*<<< orphan*/  codec_id; } ;
struct TYPE_14__ {scalar_t__ type; } ;
typedef  TYPE_4__ MXFTrack ;
typedef  TYPE_5__ MXFPartition ;
typedef  int /*<<< orphan*/  MXFMetadataSet ;
typedef  TYPE_6__ MXFIndexTableSegment ;
typedef  TYPE_7__ MXFContext ;
typedef  TYPE_8__ AVStream ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ ClipWrapped ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ IndexTableSegment ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_7__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static int FUNC8(MXFContext *mxf, AVStream *st)
{
    MXFTrack *track = st->priv_data;
    MXFIndexTableSegment *segment = NULL;
    MXFPartition *p = NULL;
    int essence_partition_count = 0;
    int edit_unit_byte_count = 0;
    int i, ret;

    if (!track || track->wrapping != ClipWrapped)
        return 0;

    /* check if track already has an IndexTableSegment */
    for (i = 0; i < mxf->metadata_sets_count; i++) {
        if (mxf->metadata_sets[i]->type == IndexTableSegment) {
            MXFIndexTableSegment *s = (MXFIndexTableSegment*)mxf->metadata_sets[i];
            if (s->body_sid == track->body_sid)
                return 0;
        }
    }

    /* find the essence partition */
    for (i = 0; i < mxf->partitions_count; i++) {
        /* BodySID == 0 -> no essence */
        if (mxf->partitions[i].body_sid != track->body_sid)
            continue;

        p = &mxf->partitions[i];
        essence_partition_count++;
    }

    /* only handle files with a single essence partition */
    if (essence_partition_count != 1)
        return 0;

    if (st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO && FUNC5(st->codecpar->codec_id)) {
        edit_unit_byte_count = (FUNC1(st->codecpar->codec_id) * st->codecpar->channels) >> 3;
    } else if (st->duration > 0 && p->first_essence_klv.length > 0 && p->first_essence_klv.length % st->duration == 0) {
        edit_unit_byte_count = p->first_essence_klv.length / st->duration;
    }

    if (edit_unit_byte_count <= 0)
        return 0;

    FUNC3(mxf->fc, AV_LOG_WARNING, "guessing index for stream %d using edit unit byte count %d\n", st->index, edit_unit_byte_count);

    if (!(segment = FUNC4(sizeof(*segment))))
        return FUNC0(ENOMEM);

    if ((ret = FUNC6(mxf, segment))) {
        FUNC7((MXFMetadataSet**)&segment, 1);
        return ret;
    }

    /* Make sure we have nonzero unique index_sid, body_sid will be ok, because
     * using the same SID for index is forbidden in MXF. */
    if (!track->index_sid)
        track->index_sid = track->body_sid;

    segment->type = IndexTableSegment;
    /* stream will be treated as small EditUnitByteCount */
    segment->edit_unit_byte_count = edit_unit_byte_count;
    segment->index_start_position = 0;
    segment->index_duration = st->duration;
    segment->index_edit_rate = FUNC2(st->time_base);
    segment->index_sid = track->index_sid;
    segment->body_sid = p->body_sid;
    return 0;
}