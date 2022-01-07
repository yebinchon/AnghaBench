
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_8__ {scalar_t__ pts; int remaining_size; } ;
typedef TYPE_1__ VocDecContext ;
struct TYPE_11__ {int nb_streams; int pb; TYPE_2__** streams; TYPE_1__* priv_data; } ;
struct TYPE_10__ {scalar_t__ timestamp; int size; int pos; } ;
struct TYPE_9__ {int nb_index_entries; TYPE_3__* index_entries; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVIndexEntry ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int SEEK_SET ;
 int av_index_search_timestamp (TYPE_2__*,scalar_t__,int) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int avio_seek (int ,int ,int ) ;

__attribute__((used)) static int voc_read_seek(AVFormatContext *s, int stream_index,
                         int64_t timestamp, int flags)
{
    VocDecContext *voc = s->priv_data;
    AVStream *st;
    int index;

    if (s->nb_streams < 1) {
        av_log(s, AV_LOG_ERROR, "cannot seek while no stream was found yet\n");
        return AVERROR(EINVAL);
    }

    st = s->streams[stream_index];
    index = av_index_search_timestamp(st, timestamp, flags);

    if (index >= 0 && index < st->nb_index_entries - 1) {
        AVIndexEntry *e = &st->index_entries[index];
        avio_seek(s->pb, e->pos, SEEK_SET);
        voc->pts = e->timestamp;
        voc->remaining_size = e->size;
        return 0;
    } else if (st->nb_index_entries && st->index_entries[0].timestamp <= timestamp) {
        AVIndexEntry *e = &st->index_entries[st->nb_index_entries - 1];

        voc->pts = e->timestamp;
        voc->remaining_size = e->size;
    }
    return -1;
}
