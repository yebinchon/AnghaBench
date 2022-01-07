
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_10__ {int currentframe; } ;
struct TYPE_9__ {int pb; TYPE_4__* priv_data; TYPE_2__** streams; } ;
struct TYPE_8__ {TYPE_1__* index_entries; } ;
struct TYPE_7__ {int pos; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ APEContext ;


 int SEEK_SET ;
 int av_index_search_timestamp (TYPE_2__*,int ,int) ;
 scalar_t__ avio_seek (int ,int ,int ) ;

__attribute__((used)) static int ape_read_seek(AVFormatContext *s, int stream_index, int64_t timestamp, int flags)
{
    AVStream *st = s->streams[stream_index];
    APEContext *ape = s->priv_data;
    int index = av_index_search_timestamp(st, timestamp, flags);

    if (index < 0)
        return -1;

    if (avio_seek(s->pb, st->index_entries[index].pos, SEEK_SET) < 0)
        return -1;
    ape->currentframe = index;
    return 0;
}
