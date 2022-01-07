
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int q; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef int AVPacket ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AQTitleContext ;


 int ff_subtitles_queue_read_packet (int *,int *) ;

__attribute__((used)) static int aqt_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    AQTitleContext *aqt = s->priv_data;
    return ff_subtitles_queue_read_packet(&aqt->q, pkt);
}
