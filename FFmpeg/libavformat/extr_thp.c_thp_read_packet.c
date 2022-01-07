
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int audiosize; scalar_t__ frame; scalar_t__ framecnt; int audio_stream_index; int video_stream_index; scalar_t__ has_audio; void* next_framesz; int next_frame; } ;
typedef TYPE_1__ ThpDemuxContext ;
struct TYPE_10__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int * data; int duration; int stream_index; } ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_RB32 (int *) ;
 int EIO ;
 scalar_t__ FFMAX (void*,int) ;
 int SEEK_SET ;
 int av_get_packet (int *,TYPE_2__*,unsigned int) ;
 int av_packet_unref (TYPE_2__*) ;
 void* avio_rb32 (int *) ;
 int avio_seek (int *,int ,int ) ;

__attribute__((used)) static int thp_read_packet(AVFormatContext *s,
                            AVPacket *pkt)
{
    ThpDemuxContext *thp = s->priv_data;
    AVIOContext *pb = s->pb;
    unsigned int size;
    int ret;

    if (thp->audiosize == 0) {

        if (thp->frame >= thp->framecnt)
            return AVERROR_EOF;

        avio_seek(pb, thp->next_frame, SEEK_SET);


        thp->next_frame += FFMAX(thp->next_framesz, 1);
        thp->next_framesz = avio_rb32(pb);

                        avio_rb32(pb);
        size = avio_rb32(pb);



        if (thp->has_audio)
            thp->audiosize = avio_rb32(pb);
        else
            thp->frame++;

        ret = av_get_packet(pb, pkt, size);
        if (ret < 0)
            return ret;
        if (ret != size) {
            av_packet_unref(pkt);
            return AVERROR(EIO);
        }

        pkt->stream_index = thp->video_stream_index;
    } else {
        ret = av_get_packet(pb, pkt, thp->audiosize);
        if (ret < 0)
            return ret;
        if (ret != thp->audiosize) {
            av_packet_unref(pkt);
            return AVERROR(EIO);
        }

        pkt->stream_index = thp->audio_stream_index;
        if (thp->audiosize >= 8)
            pkt->duration = AV_RB32(&pkt->data[4]);

        thp->audiosize = 0;
        thp->frame++;
    }

    return 0;
}
