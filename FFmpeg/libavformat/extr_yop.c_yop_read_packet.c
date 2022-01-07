
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int stream_index; int* data; int size; int pos; int flags; int * buf; } ;
struct TYPE_10__ {int frame_size; int audio_block_length; int palette_size; int odd_frame; TYPE_2__ video_packet; } ;
typedef TYPE_1__ YopDecContext ;
struct TYPE_12__ {int * pb; TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_EOF ;
 int AV_PKT_FLAG_KEY ;
 int av_get_packet (int *,TYPE_2__*,int) ;
 int av_new_packet (TYPE_2__*,int) ;
 int av_packet_unref (TYPE_2__*) ;
 int av_shrink_packet (TYPE_2__*,int) ;
 int avio_read (int *,int*,int) ;
 int avio_skip (int *,int) ;
 int avio_tell (int *) ;

__attribute__((used)) static int yop_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    YopDecContext *yop = s->priv_data;
    AVIOContext *pb = s->pb;

    int ret;
    int actual_video_data_size = yop->frame_size -
                                 yop->audio_block_length - yop->palette_size;

    yop->video_packet.stream_index = 1;

    if (yop->video_packet.data) {
        *pkt = yop->video_packet;
        yop->video_packet.data = ((void*)0);
        yop->video_packet.buf = ((void*)0);
        yop->video_packet.size = 0;
        pkt->data[0] = yop->odd_frame;
        pkt->flags |= AV_PKT_FLAG_KEY;
        yop->odd_frame ^= 1;
        return pkt->size;
    }
    ret = av_new_packet(&yop->video_packet,
                        yop->frame_size - yop->audio_block_length);
    if (ret < 0)
        return ret;

    yop->video_packet.pos = avio_tell(pb);

    ret = avio_read(pb, yop->video_packet.data, yop->palette_size);
    if (ret < 0) {
        goto err_out;
    }else if (ret < yop->palette_size) {
        ret = AVERROR_EOF;
        goto err_out;
    }

    ret = av_get_packet(pb, pkt, 920);
    if (ret < 0)
        goto err_out;


    pkt->pos = yop->video_packet.pos;

    avio_skip(pb, yop->audio_block_length - ret);

    ret = avio_read(pb, yop->video_packet.data + yop->palette_size,
                     actual_video_data_size);
    if (ret < 0)
        goto err_out;
    else if (ret < actual_video_data_size)
        av_shrink_packet(&yop->video_packet, yop->palette_size + ret);


    return yop->audio_block_length;

err_out:
    av_packet_unref(&yop->video_packet);
    return ret;
}
