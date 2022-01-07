
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* priv_data; } ;
struct TYPE_12__ {TYPE_1__* codecpar; } ;
struct TYPE_11__ {int vi; scalar_t__ error; } ;
struct TYPE_10__ {scalar_t__ codec_type; } ;
typedef TYPE_2__ AviSynthContext ;
typedef TYPE_3__ AVStream ;
typedef int AVPacket ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVERROR_UNKNOWN ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int avisynth_next_stream (TYPE_4__*,TYPE_3__**,int *,int*) ;
 int avisynth_read_packet_audio (TYPE_4__*,int *,int) ;
 int avisynth_read_packet_video (TYPE_4__*,int *,int) ;
 scalar_t__ avs_has_audio (int ) ;
 scalar_t__ avs_has_video (int ) ;

__attribute__((used)) static int avisynth_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    AviSynthContext *avs = s->priv_data;
    AVStream *st;
    int discard = 0;
    int ret;

    if (avs->error)
        return AVERROR_UNKNOWN;



    avisynth_next_stream(s, &st, pkt, &discard);
    if (st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
        ret = avisynth_read_packet_video(s, pkt, discard);
        if (ret == AVERROR_EOF && avs_has_audio(avs->vi)) {
            avisynth_next_stream(s, &st, pkt, &discard);
            return avisynth_read_packet_audio(s, pkt, discard);
        }
    } else {
        ret = avisynth_read_packet_audio(s, pkt, discard);
        if (ret == AVERROR_EOF && avs_has_video(avs->vi)) {
            avisynth_next_stream(s, &st, pkt, &discard);
            return avisynth_read_packet_video(s, pkt, discard);
        }
    }

    return ret;
}
