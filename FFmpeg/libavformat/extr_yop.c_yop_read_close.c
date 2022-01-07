
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int video_packet; } ;
typedef TYPE_1__ YopDecContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int av_packet_unref (int *) ;

__attribute__((used)) static int yop_read_close(AVFormatContext *s)
{
    YopDecContext *yop = s->priv_data;
    av_packet_unref(&yop->video_packet);
    return 0;
}
