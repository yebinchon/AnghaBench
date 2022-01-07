
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int priv_data; } ;
struct TYPE_9__ {int old_format; } ;
typedef TYPE_1__ RMDemuxContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int ff_rm_alloc_rmstream () ;
 int rm_read_audio_stream_info (TYPE_3__*,int ,TYPE_2__*,int ,int) ;

__attribute__((used)) static int rm_read_header_old(AVFormatContext *s)
{
    RMDemuxContext *rm = s->priv_data;
    AVStream *st;

    rm->old_format = 1;
    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return -1;
    st->priv_data = ff_rm_alloc_rmstream();
    if (!st->priv_data)
        return AVERROR(ENOMEM);
    return rm_read_audio_stream_info(s, s->pb, st, st->priv_data, 1);
}
