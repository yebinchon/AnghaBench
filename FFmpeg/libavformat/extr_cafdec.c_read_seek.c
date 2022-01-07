
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t int64_t ;
struct TYPE_10__ {int pb; TYPE_2__* priv_data; TYPE_3__** streams; } ;
struct TYPE_9__ {TYPE_1__* index_entries; scalar_t__ nb_index_entries; } ;
struct TYPE_8__ {size_t frames_per_packet; size_t bytes_per_packet; scalar_t__ data_size; size_t packet_cnt; size_t frame_cnt; scalar_t__ data_start; } ;
struct TYPE_7__ {size_t timestamp; size_t pos; } ;
typedef TYPE_2__ CafContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 size_t FFMAX (size_t,int ) ;
 size_t FFMIN (size_t,scalar_t__) ;
 int SEEK_SET ;
 size_t av_index_search_timestamp (TYPE_3__*,size_t,int) ;
 scalar_t__ avio_seek (int ,scalar_t__,int ) ;

__attribute__((used)) static int read_seek(AVFormatContext *s, int stream_index,
                     int64_t timestamp, int flags)
{
    AVStream *st = s->streams[0];
    CafContext *caf = s->priv_data;
    int64_t pos, packet_cnt, frame_cnt;

    timestamp = FFMAX(timestamp, 0);

    if (caf->frames_per_packet > 0 && caf->bytes_per_packet > 0) {

        pos = caf->bytes_per_packet * (timestamp / caf->frames_per_packet);
        if (caf->data_size > 0)
            pos = FFMIN(pos, caf->data_size);
        packet_cnt = pos / caf->bytes_per_packet;
        frame_cnt = caf->frames_per_packet * packet_cnt;
    } else if (st->nb_index_entries) {
        packet_cnt = av_index_search_timestamp(st, timestamp, flags);
        frame_cnt = st->index_entries[packet_cnt].timestamp;
        pos = st->index_entries[packet_cnt].pos;
    } else {
        return -1;
    }

    if (avio_seek(s->pb, pos + caf->data_start, SEEK_SET) < 0)
        return -1;

    caf->packet_cnt = packet_cnt;
    caf->frame_cnt = frame_cnt;

    return 0;
}
