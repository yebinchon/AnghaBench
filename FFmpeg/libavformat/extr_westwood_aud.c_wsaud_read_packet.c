
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__** streams; int * pb; } ;
struct TYPE_12__ {unsigned char* data; int duration; int stream_index; } ;
struct TYPE_11__ {int index; TYPE_1__* codecpar; } ;
struct TYPE_10__ {scalar_t__ codec_id; unsigned int channels; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AUD_CHUNK_PREAMBLE_SIZE ;
 scalar_t__ AUD_CHUNK_SIGNATURE ;
 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AV_CODEC_ID_WESTWOOD_SND1 ;
 int AV_LOG_ERROR ;
 void* AV_RL16 (unsigned char*) ;
 scalar_t__ AV_RL32 (unsigned char*) ;
 int AV_WL16 (unsigned char*,unsigned int) ;
 int EIO ;
 int av_get_packet (int *,TYPE_3__*,unsigned int) ;
 int av_log (TYPE_4__*,int ,char*,unsigned int) ;
 int av_new_packet (TYPE_3__*,unsigned int) ;
 int avio_read (int *,unsigned char*,unsigned int) ;

__attribute__((used)) static int wsaud_read_packet(AVFormatContext *s,
                             AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    unsigned char preamble[AUD_CHUNK_PREAMBLE_SIZE];
    unsigned int chunk_size;
    int ret = 0;
    AVStream *st = s->streams[0];

    if (avio_read(pb, preamble, AUD_CHUNK_PREAMBLE_SIZE) !=
        AUD_CHUNK_PREAMBLE_SIZE)
        return AVERROR(EIO);


    if (AV_RL32(&preamble[4]) != AUD_CHUNK_SIGNATURE)
        return AVERROR_INVALIDDATA;

    chunk_size = AV_RL16(&preamble[0]);

    if (st->codecpar->codec_id == AV_CODEC_ID_WESTWOOD_SND1) {




        int out_size = AV_RL16(&preamble[2]);
        if ((ret = av_new_packet(pkt, chunk_size + 4)) < 0)
            return ret;
        if ((ret = avio_read(pb, &pkt->data[4], chunk_size)) != chunk_size)
            return ret < 0 ? ret : AVERROR(EIO);
        AV_WL16(&pkt->data[0], out_size);
        AV_WL16(&pkt->data[2], chunk_size);

        pkt->duration = out_size;
    } else {
        ret = av_get_packet(pb, pkt, chunk_size);
        if (ret != chunk_size)
            return AVERROR(EIO);

        if (st->codecpar->channels <= 0) {
            av_log(s, AV_LOG_ERROR, "invalid number of channels %d\n",
                   st->codecpar->channels);
            return AVERROR_INVALIDDATA;
        }


        pkt->duration = (chunk_size * 2) / st->codecpar->channels;
    }
    pkt->stream_index = st->index;

    return ret;
}
