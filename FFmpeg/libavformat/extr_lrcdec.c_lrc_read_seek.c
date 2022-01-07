
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int q; } ;
typedef TYPE_1__ LRCContext ;
typedef TYPE_2__ AVFormatContext ;


 int ff_subtitles_queue_seek (int *,TYPE_2__*,int,int ,int ,int ,int) ;

__attribute__((used)) static int lrc_read_seek(AVFormatContext *s, int stream_index,
                         int64_t min_ts, int64_t ts, int64_t max_ts, int flags)
{
    LRCContext *lrc = s->priv_data;
    return ff_subtitles_queue_seek(&lrc->q, s, stream_index,
                                   min_ts, ts, max_ts, flags);
}
