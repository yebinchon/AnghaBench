
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int q; } ;
typedef TYPE_1__ SRTContext ;
typedef int AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int ff_subtitles_queue_read_packet (int *,int *) ;

__attribute__((used)) static int srt_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    SRTContext *srt = s->priv_data;
    return ff_subtitles_queue_read_packet(&srt->q, pkt);
}
