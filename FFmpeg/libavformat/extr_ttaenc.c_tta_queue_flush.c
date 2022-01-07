
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int size; int data; } ;
struct TYPE_7__ {int queue_end; scalar_t__ queue; } ;
typedef TYPE_1__ TTAMuxContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int av_packet_unref (TYPE_2__*) ;
 int avio_write (int ,int ,int ) ;
 int ff_packet_list_get (scalar_t__*,int *,TYPE_2__*) ;

__attribute__((used)) static void tta_queue_flush(AVFormatContext *s)
{
    TTAMuxContext *tta = s->priv_data;
    AVPacket pkt;

    while (tta->queue) {
        ff_packet_list_get(&tta->queue, &tta->queue_end, &pkt);
        avio_write(s->pb, pkt.data, pkt.size);
        av_packet_unref(&pkt);
    }
}
