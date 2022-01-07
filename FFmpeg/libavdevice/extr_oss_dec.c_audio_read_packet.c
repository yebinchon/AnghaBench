
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct audio_buf_info {scalar_t__ bytes; } ;
typedef int int64_t ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int size; int pts; scalar_t__ data; } ;
struct TYPE_8__ {int sample_rate; int channels; scalar_t__ flip_left; int fd; int frame_size; } ;
typedef TYPE_1__ OSSAudioData ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int SNDCTL_DSP_GETISPACE ;
 int av_gettime () ;
 int av_new_packet (TYPE_2__*,int ) ;
 int av_packet_unref (TYPE_2__*) ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct audio_buf_info*) ;
 int read (int ,scalar_t__,int) ;

__attribute__((used)) static int audio_read_packet(AVFormatContext *s1, AVPacket *pkt)
{
    OSSAudioData *s = s1->priv_data;
    int ret, bdelay;
    int64_t cur_time;
    struct audio_buf_info abufi;

    if ((ret=av_new_packet(pkt, s->frame_size)) < 0)
        return ret;

    ret = read(s->fd, pkt->data, pkt->size);
    if (ret <= 0){
        av_packet_unref(pkt);
        pkt->size = 0;
        if (ret<0) return AVERROR(errno);
        else return AVERROR_EOF;
    }
    pkt->size = ret;


    cur_time = av_gettime();
    bdelay = ret;
    if (ioctl(s->fd, SNDCTL_DSP_GETISPACE, &abufi) == 0) {
        bdelay += abufi.bytes;
    }

    cur_time -= (bdelay * 1000000LL) / (s->sample_rate * s->channels);


    pkt->pts = cur_time;

    if (s->flip_left && s->channels == 2) {
        int i;
        short *p = (short *) pkt->data;

        for (i = 0; i < ret; i += 4) {
            *p = ~*p;
            p += 2;
        }
    }
    return 0;
}
