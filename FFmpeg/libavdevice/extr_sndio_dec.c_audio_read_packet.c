
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int size; int pts; int data; } ;
struct TYPE_8__ {int softpos; int hwpos; int bps; int channels; int sample_rate; int hdl; int buffer_size; } ;
typedef TYPE_1__ SndioData ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_EOF ;
 int av_gettime () ;
 int av_new_packet (TYPE_2__*,int ) ;
 int av_packet_unref (TYPE_2__*) ;
 scalar_t__ sio_eof (int ) ;
 int sio_read (int ,int ,int) ;

__attribute__((used)) static int audio_read_packet(AVFormatContext *s1, AVPacket *pkt)
{
    SndioData *s = s1->priv_data;
    int64_t bdelay, cur_time;
    int ret;

    if ((ret = av_new_packet(pkt, s->buffer_size)) < 0)
        return ret;

    ret = sio_read(s->hdl, pkt->data, pkt->size);
    if (ret == 0 || sio_eof(s->hdl)) {
        av_packet_unref(pkt);
        return AVERROR_EOF;
    }

    pkt->size = ret;
    s->softpos += ret;


    cur_time = av_gettime();

    bdelay = ret + s->hwpos - s->softpos;


    pkt->pts = cur_time - ((bdelay * 1000000) /
        (s->bps * s->channels * s->sample_rate));

    return 0;
}
