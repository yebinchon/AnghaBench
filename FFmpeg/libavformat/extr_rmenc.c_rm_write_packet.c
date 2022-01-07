
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__** streams; } ;
struct TYPE_11__ {size_t stream_index; int flags; int size; int data; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {scalar_t__ codec_type; } ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFormatContext ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 int rm_write_audio (TYPE_4__*,int ,int ,int ) ;
 int rm_write_video (TYPE_4__*,int ,int ,int ) ;

__attribute__((used)) static int rm_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    if (s->streams[pkt->stream_index]->codecpar->codec_type ==
        AVMEDIA_TYPE_AUDIO)
        return rm_write_audio(s, pkt->data, pkt->size, pkt->flags);
    else
        return rm_write_video(s, pkt->data, pkt->size, pkt->flags);
}
