
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ size; } ;
struct TYPE_5__ {TYPE_4__ vpkt; } ;
typedef TYPE_1__ Wc3DemuxContext ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int av_packet_unref (TYPE_4__*) ;

__attribute__((used)) static int wc3_read_close(AVFormatContext *s)
{
    Wc3DemuxContext *wc3 = s->priv_data;

    if (wc3->vpkt.size > 0)
        av_packet_unref(&wc3->vpkt);

    return 0;
}
