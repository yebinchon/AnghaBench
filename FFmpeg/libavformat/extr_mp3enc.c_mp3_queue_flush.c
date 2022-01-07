
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int metadata_header_padding; int pb; TYPE_1__* priv_data; } ;
struct TYPE_6__ {int queue_end; scalar_t__ queue; int id3; } ;
typedef TYPE_1__ MP3Context ;
typedef int AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int av_packet_unref (int *) ;
 int ff_id3v2_finish (int *,int ,int ) ;
 int ff_packet_list_get (scalar_t__*,int *,int *) ;
 int mp3_write_audio_packet (TYPE_2__*,int *) ;
 int mp3_write_xing (TYPE_2__*) ;

__attribute__((used)) static int mp3_queue_flush(AVFormatContext *s)
{
    MP3Context *mp3 = s->priv_data;
    AVPacket pkt;
    int ret = 0, write = 1;

    ff_id3v2_finish(&mp3->id3, s->pb, s->metadata_header_padding);
    mp3_write_xing(s);

    while (mp3->queue) {
        ff_packet_list_get(&mp3->queue, &mp3->queue_end, &pkt);
        if (write && (ret = mp3_write_audio_packet(s, &pkt)) < 0)
            write = 0;
        av_packet_unref(&pkt);
    }
    return ret;
}
