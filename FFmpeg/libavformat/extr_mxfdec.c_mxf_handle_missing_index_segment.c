
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_21__ {int duration; int time_base; int index; TYPE_2__* codecpar; TYPE_4__* priv_data; } ;
struct TYPE_20__ {int metadata_sets_count; int partitions_count; int fc; TYPE_5__* partitions; TYPE_1__** metadata_sets; } ;
struct TYPE_19__ {scalar_t__ body_sid; int edit_unit_byte_count; int index_duration; scalar_t__ index_sid; int index_edit_rate; scalar_t__ index_start_position; scalar_t__ type; } ;
struct TYPE_16__ {int length; } ;
struct TYPE_18__ {scalar_t__ body_sid; TYPE_3__ first_essence_klv; } ;
struct TYPE_17__ {scalar_t__ wrapping; scalar_t__ body_sid; scalar_t__ index_sid; } ;
struct TYPE_15__ {scalar_t__ codec_type; int channels; int codec_id; } ;
struct TYPE_14__ {scalar_t__ type; } ;
typedef TYPE_4__ MXFTrack ;
typedef TYPE_5__ MXFPartition ;
typedef int MXFMetadataSet ;
typedef TYPE_6__ MXFIndexTableSegment ;
typedef TYPE_7__ MXFContext ;
typedef TYPE_8__ AVStream ;


 int AVERROR (int ) ;
 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 int AV_LOG_WARNING ;
 scalar_t__ ClipWrapped ;
 int ENOMEM ;
 scalar_t__ IndexTableSegment ;
 int av_get_bits_per_sample (int ) ;
 int av_inv_q (int ) ;
 int av_log (int ,int ,char*,int ,int) ;
 TYPE_6__* av_mallocz (int) ;
 scalar_t__ is_pcm (int ) ;
 int mxf_add_metadata_set (TYPE_7__*,TYPE_6__*) ;
 int mxf_free_metadataset (int **,int) ;

__attribute__((used)) static int mxf_handle_missing_index_segment(MXFContext *mxf, AVStream *st)
{
    MXFTrack *track = st->priv_data;
    MXFIndexTableSegment *segment = ((void*)0);
    MXFPartition *p = ((void*)0);
    int essence_partition_count = 0;
    int edit_unit_byte_count = 0;
    int i, ret;

    if (!track || track->wrapping != ClipWrapped)
        return 0;


    for (i = 0; i < mxf->metadata_sets_count; i++) {
        if (mxf->metadata_sets[i]->type == IndexTableSegment) {
            MXFIndexTableSegment *s = (MXFIndexTableSegment*)mxf->metadata_sets[i];
            if (s->body_sid == track->body_sid)
                return 0;
        }
    }


    for (i = 0; i < mxf->partitions_count; i++) {

        if (mxf->partitions[i].body_sid != track->body_sid)
            continue;

        p = &mxf->partitions[i];
        essence_partition_count++;
    }


    if (essence_partition_count != 1)
        return 0;

    if (st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO && is_pcm(st->codecpar->codec_id)) {
        edit_unit_byte_count = (av_get_bits_per_sample(st->codecpar->codec_id) * st->codecpar->channels) >> 3;
    } else if (st->duration > 0 && p->first_essence_klv.length > 0 && p->first_essence_klv.length % st->duration == 0) {
        edit_unit_byte_count = p->first_essence_klv.length / st->duration;
    }

    if (edit_unit_byte_count <= 0)
        return 0;

    av_log(mxf->fc, AV_LOG_WARNING, "guessing index for stream %d using edit unit byte count %d\n", st->index, edit_unit_byte_count);

    if (!(segment = av_mallocz(sizeof(*segment))))
        return AVERROR(ENOMEM);

    if ((ret = mxf_add_metadata_set(mxf, segment))) {
        mxf_free_metadataset((MXFMetadataSet**)&segment, 1);
        return ret;
    }



    if (!track->index_sid)
        track->index_sid = track->body_sid;

    segment->type = IndexTableSegment;

    segment->edit_unit_byte_count = edit_unit_byte_count;
    segment->index_start_position = 0;
    segment->index_duration = st->duration;
    segment->index_edit_rate = av_inv_q(st->time_base);
    segment->index_sid = track->index_sid;
    segment->body_sid = p->body_sid;
    return 0;
}
