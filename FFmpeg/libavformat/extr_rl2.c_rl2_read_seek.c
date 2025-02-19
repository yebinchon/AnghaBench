
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_10__ {int nb_streams; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_9__ {int time_base; TYPE_1__* index_entries; } ;
struct TYPE_8__ {int* index_pos; } ;
struct TYPE_7__ {int timestamp; } ;
typedef TYPE_2__ Rl2DemuxContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVSEEK_FLAG_BACKWARD ;
 int av_index_search_timestamp (TYPE_3__*,int ,int) ;
 int av_rescale_q (int ,int ,int ) ;

__attribute__((used)) static int rl2_read_seek(AVFormatContext *s, int stream_index, int64_t timestamp, int flags)
{
    AVStream *st = s->streams[stream_index];
    Rl2DemuxContext *rl2 = s->priv_data;
    int i;
    int index = av_index_search_timestamp(st, timestamp, flags);
    if(index < 0)
        return -1;

    rl2->index_pos[stream_index] = index;
    timestamp = st->index_entries[index].timestamp;

    for(i=0; i < s->nb_streams; i++){
        AVStream *st2 = s->streams[i];
        index = av_index_search_timestamp(st2,
                    av_rescale_q(timestamp, st->time_base, st2->time_base),
                    flags | AVSEEK_FLAG_BACKWARD);

        if(index < 0)
            index = 0;

        rl2->index_pos[i] = index;
    }

    return 0;
}
