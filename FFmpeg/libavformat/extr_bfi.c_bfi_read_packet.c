
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int pts; int stream_index; } ;
struct TYPE_8__ {scalar_t__ nframes; int avflag; int video_size; int audio_frame; int video_frame; } ;
typedef TYPE_1__ BFIContext ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int EIO ;
 int MKTAG (char,char,char,char) ;
 int av_get_packet (int *,TYPE_2__*,int) ;
 int av_log (TYPE_3__*,int ,char*) ;
 scalar_t__ avio_feof (int *) ;
 int avio_r8 (int *) ;
 int avio_rl32 (int *) ;

__attribute__((used)) static int bfi_read_packet(AVFormatContext * s, AVPacket * pkt)
{
    BFIContext *bfi = s->priv_data;
    AVIOContext *pb = s->pb;
    int ret, audio_offset, video_offset, chunk_size, audio_size = 0;
    if (bfi->nframes == 0 || avio_feof(pb)) {
        return AVERROR_EOF;
    }


    if (!bfi->avflag) {
        uint32_t state = 0;
        while(state != MKTAG('S','A','V','I')){
            if (avio_feof(pb))
                return AVERROR(EIO);
            state = 256*state + avio_r8(pb);
        }

        chunk_size = avio_rl32(pb);
        avio_rl32(pb);
        audio_offset = avio_rl32(pb);
        avio_rl32(pb);
        video_offset = avio_rl32(pb);
        audio_size = video_offset - audio_offset;
        bfi->video_size = chunk_size - video_offset;
        if (audio_size < 0 || bfi->video_size < 0) {
            av_log(s, AV_LOG_ERROR, "Invalid audio/video offsets or chunk size\n");
            return AVERROR_INVALIDDATA;
        }


        ret = av_get_packet(pb, pkt, audio_size);
        if (ret < 0)
            return ret;

        pkt->pts = bfi->audio_frame;
        bfi->audio_frame += ret;
    } else if (bfi->video_size > 0) {


        ret = av_get_packet(pb, pkt, bfi->video_size);
        if (ret < 0)
            return ret;

        pkt->pts = bfi->video_frame;
        bfi->video_frame += ret / bfi->video_size;


        bfi->nframes--;
    } else {

        ret = AVERROR(EAGAIN);
    }

    bfi->avflag = !bfi->avflag;
    pkt->stream_index = bfi->avflag;
    return ret;
}
