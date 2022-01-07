
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int per_frame; } ;
typedef TYPE_1__ VideoData ;
struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {int data; int pts; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int EIO ;
 int av_gettime () ;
 scalar_t__ av_new_packet (TYPE_2__*,int) ;
 int bktr_getframe (int ) ;
 int memcpy (int ,int ,int) ;
 int video_buf ;
 int video_buf_size ;

__attribute__((used)) static int grab_read_packet(AVFormatContext *s1, AVPacket *pkt)
{
    VideoData *s = s1->priv_data;

    if (av_new_packet(pkt, video_buf_size) < 0)
        return AVERROR(EIO);

    bktr_getframe(s->per_frame);

    pkt->pts = av_gettime();
    memcpy(pkt->data, video_buf, video_buf_size);

    return video_buf_size;
}
