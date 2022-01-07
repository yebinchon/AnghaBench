
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int queue_end; scalar_t__ queue; } ;
typedef TYPE_1__ FlacMuxerContext ;
typedef int AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int av_packet_unref (int *) ;
 int ff_packet_list_get (scalar_t__*,int *,int *) ;
 int flac_finish_header (TYPE_2__*) ;
 int flac_write_audio_packet (TYPE_2__*,int *) ;

__attribute__((used)) static int flac_queue_flush(AVFormatContext *s)
{
    FlacMuxerContext *c = s->priv_data;
    AVPacket pkt;
    int ret, write = 1;

    ret = flac_finish_header(s);
    if (ret < 0)
        write = 0;

    while (c->queue) {
        ff_packet_list_get(&c->queue, &c->queue_end, &pkt);
        if (write && (ret = flac_write_audio_packet(s, &pkt)) < 0)
            write = 0;
        av_packet_unref(&pkt);
    }
    return ret;
}
