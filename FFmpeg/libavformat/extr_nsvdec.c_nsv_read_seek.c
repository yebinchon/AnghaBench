
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_12__ {int pb; TYPE_4__** streams; TYPE_3__* priv_data; } ;
struct TYPE_11__ {TYPE_1__* index_entries; TYPE_2__* priv_data; } ;
struct TYPE_10__ {int state; } ;
struct TYPE_9__ {int frame_offset; } ;
struct TYPE_8__ {int timestamp; int pos; } ;
typedef TYPE_2__ NSVStream ;
typedef TYPE_3__ NSVContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVFormatContext ;


 int NSV_UNSYNC ;
 int SEEK_SET ;
 int av_index_search_timestamp (TYPE_4__*,int ,int) ;
 scalar_t__ avio_seek (int ,int ,int ) ;

__attribute__((used)) static int nsv_read_seek(AVFormatContext *s, int stream_index, int64_t timestamp, int flags)
{
    NSVContext *nsv = s->priv_data;
    AVStream *st = s->streams[stream_index];
    NSVStream *nst = st->priv_data;
    int index;

    index = av_index_search_timestamp(st, timestamp, flags);
    if(index < 0)
        return -1;

    if (avio_seek(s->pb, st->index_entries[index].pos, SEEK_SET) < 0)
        return -1;

    nst->frame_offset = st->index_entries[index].timestamp;
    nsv->state = NSV_UNSYNC;
    return 0;
}
