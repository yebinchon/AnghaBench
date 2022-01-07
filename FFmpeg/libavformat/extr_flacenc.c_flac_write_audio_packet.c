
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct AVFormatContext {int pb; TYPE_1__* priv_data; } ;
struct TYPE_6__ {scalar_t__ size; int data; } ;
struct TYPE_5__ {int streaminfo; } ;
typedef TYPE_1__ FlacMuxerContext ;
typedef TYPE_2__ AVPacket ;


 int AVERROR (int ) ;
 int AV_PKT_DATA_NEW_EXTRADATA ;
 int ENOMEM ;
 int FLAC_STREAMINFO_SIZE ;
 int av_freep (int *) ;
 int av_malloc (int) ;
 int * av_packet_get_side_data (TYPE_2__*,int ,int*) ;
 int avio_write (int ,int ,scalar_t__) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int flac_write_audio_packet(struct AVFormatContext *s, AVPacket *pkt)
{
    FlacMuxerContext *c = s->priv_data;
    uint8_t *streaminfo;
    int streaminfo_size;


    streaminfo = av_packet_get_side_data(pkt, AV_PKT_DATA_NEW_EXTRADATA,
                                         &streaminfo_size);
    if (streaminfo && streaminfo_size == FLAC_STREAMINFO_SIZE) {
        av_freep(&c->streaminfo);

        c->streaminfo = av_malloc(FLAC_STREAMINFO_SIZE);
        if (!c->streaminfo)
            return AVERROR(ENOMEM);
        memcpy(c->streaminfo, streaminfo, FLAC_STREAMINFO_SIZE);
    }

    if (pkt->size)
        avio_write(s->pb, pkt->data, pkt->size);
    return 0;
}
