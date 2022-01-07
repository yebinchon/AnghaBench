
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {scalar_t__ audio_pkt_cnt; } ;
typedef TYPE_1__ RMDemuxContext ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ ff_seek_frame_binary (TYPE_2__*,int,int ,int) ;

__attribute__((used)) static int rm_read_seek(AVFormatContext *s, int stream_index,
                        int64_t pts, int flags)
{
    RMDemuxContext *rm = s->priv_data;

    if (ff_seek_frame_binary(s, stream_index, pts, flags) < 0)
        return -1;
    rm->audio_pkt_cnt = 0;
    return 0;
}
