
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_22__ {TYPE_6__** streams; TYPE_5__* priv_data; } ;
struct TYPE_21__ {int nb_index_entries; int skip_to_keyframe; TYPE_3__* index_entries; } ;
struct TYPE_16__ {int nb_elem; TYPE_4__* elem; } ;
struct TYPE_20__ {scalar_t__ cues_parsing_deferred; int skip_to_keyframe; int resync_pos; scalar_t__ done; int skip_to_timecode; TYPE_1__ tracks; } ;
struct TYPE_17__ {int buf_timecode; scalar_t__ sub_packet_cnt; scalar_t__ pkt_cnt; } ;
struct TYPE_19__ {scalar_t__ end_timecode; TYPE_2__ audio; } ;
struct TYPE_18__ {int pos; int timestamp; } ;
typedef TYPE_4__ MatroskaTrack ;
typedef TYPE_5__ MatroskaDemuxContext ;
typedef TYPE_6__ AVStream ;
typedef TYPE_7__ AVFormatContext ;


 int AVSEEK_FLAG_ANY ;
 int AV_NOPTS_VALUE ;
 int FFMAX (int ,int ) ;
 int av_index_search_timestamp (TYPE_6__*,int ,int) ;
 int ff_update_cur_dts (TYPE_7__*,TYPE_6__*,int ) ;
 int matroska_clear_queue (TYPE_5__*) ;
 scalar_t__ matroska_parse_cluster (TYPE_5__*) ;
 int matroska_parse_cues (TYPE_5__*) ;
 int matroska_reset_status (TYPE_5__*,int ,int) ;

__attribute__((used)) static int matroska_read_seek(AVFormatContext *s, int stream_index,
                              int64_t timestamp, int flags)
{
    MatroskaDemuxContext *matroska = s->priv_data;
    MatroskaTrack *tracks = ((void*)0);
    AVStream *st = s->streams[stream_index];
    int i, index;


    if (matroska->cues_parsing_deferred > 0) {
        matroska->cues_parsing_deferred = 0;
        matroska_parse_cues(matroska);
    }

    if (!st->nb_index_entries)
        goto err;
    timestamp = FFMAX(timestamp, st->index_entries[0].timestamp);

    if ((index = av_index_search_timestamp(st, timestamp, flags)) < 0 || index == st->nb_index_entries - 1) {
        matroska_reset_status(matroska, 0, st->index_entries[st->nb_index_entries - 1].pos);
        while ((index = av_index_search_timestamp(st, timestamp, flags)) < 0 || index == st->nb_index_entries - 1) {
            matroska_clear_queue(matroska);
            if (matroska_parse_cluster(matroska) < 0)
                break;
        }
    }

    matroska_clear_queue(matroska);
    if (index < 0 || (matroska->cues_parsing_deferred < 0 && index == st->nb_index_entries - 1))
        goto err;

    tracks = matroska->tracks.elem;
    for (i = 0; i < matroska->tracks.nb_elem; i++) {
        tracks[i].audio.pkt_cnt = 0;
        tracks[i].audio.sub_packet_cnt = 0;
        tracks[i].audio.buf_timecode = AV_NOPTS_VALUE;
        tracks[i].end_timecode = 0;
    }


    matroska_reset_status(matroska, 0, st->index_entries[index].pos);
    if (flags & AVSEEK_FLAG_ANY) {
        st->skip_to_keyframe = 0;
        matroska->skip_to_timecode = timestamp;
    } else {
        st->skip_to_keyframe = 1;
        matroska->skip_to_timecode = st->index_entries[index].timestamp;
    }
    matroska->skip_to_keyframe = 1;
    matroska->done = 0;
    ff_update_cur_dts(s, st, st->index_entries[index].timestamp);
    return 0;
err:


    matroska_reset_status(matroska, 0, -1);
    matroska->resync_pos = -1;
    matroska_clear_queue(matroska);
    st->skip_to_keyframe =
    matroska->skip_to_keyframe = 0;
    matroska->done = 0;
    return -1;
}
