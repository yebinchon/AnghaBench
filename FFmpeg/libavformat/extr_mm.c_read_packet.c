
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int data; int size; int stream_index; int pts; } ;
struct TYPE_9__ {int audio_pts; int video_pts; } ;
typedef TYPE_1__ MmDemuxContext ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_INFO ;
 unsigned int AV_RL16 (unsigned char*) ;
 int EIO ;
 int ENOMEM ;
 int MM_PREAMBLE_SIZE ;
 int av_get_packet (int *,TYPE_2__*,unsigned int) ;
 int av_log (TYPE_3__*,int ,char*,unsigned int) ;
 int av_new_packet (TYPE_2__*,int) ;
 unsigned int avio_read (int *,...) ;
 int avio_skip (int *,unsigned int) ;
 int memcpy (int,unsigned char*,int) ;

__attribute__((used)) static int read_packet(AVFormatContext *s,
                           AVPacket *pkt)
{
    MmDemuxContext *mm = s->priv_data;
    AVIOContext *pb = s->pb;
    unsigned char preamble[MM_PREAMBLE_SIZE];
    unsigned int type, length;

    while(1) {

        if (avio_read(pb, preamble, MM_PREAMBLE_SIZE) != MM_PREAMBLE_SIZE) {
            return AVERROR(EIO);
        }

        type = AV_RL16(&preamble[0]);
        length = AV_RL16(&preamble[2]);

        switch(type) {
        case 128 :
        case 134 :
        case 131 :
        case 130 :
        case 133 :
        case 129 :
        case 132 :

            if (av_new_packet(pkt, length + MM_PREAMBLE_SIZE))
                return AVERROR(ENOMEM);
            memcpy(pkt->data, preamble, MM_PREAMBLE_SIZE);
            if (avio_read(pb, pkt->data + MM_PREAMBLE_SIZE, length) != length)
                return AVERROR(EIO);
            pkt->size = length + MM_PREAMBLE_SIZE;
            pkt->stream_index = 0;
            pkt->pts = mm->video_pts;
            if (type!=128)
                mm->video_pts++;
            return 0;

        case 135 :
            if (av_get_packet(s->pb, pkt, length)<0)
                return AVERROR(ENOMEM);
            pkt->stream_index = 1;
            pkt->pts = mm->audio_pts++;
            return 0;

        default :
            av_log(s, AV_LOG_INFO, "unknown chunk type 0x%x\n", type);
            avio_skip(pb, length);
        }
    }
}
