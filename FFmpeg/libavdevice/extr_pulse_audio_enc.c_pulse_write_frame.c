
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__** streams; } ;
struct TYPE_13__ {int nb_samples; int channels; int pkt_duration; int pkt_dts; int format; int * data; } ;
struct TYPE_12__ {int size; int duration; int dts; int data; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {int format; } ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 unsigned int AV_WRITE_UNCODED_FRAME_QUERY ;
 int EINVAL ;
 int av_get_bytes_per_sample (int ) ;
 scalar_t__ av_sample_fmt_is_planar (int ) ;
 int pulse_write_packet (TYPE_5__*,TYPE_3__*) ;

__attribute__((used)) static int pulse_write_frame(AVFormatContext *h, int stream_index,
                             AVFrame **frame, unsigned flags)
{
    AVPacket pkt;


    if (flags & AV_WRITE_UNCODED_FRAME_QUERY)
        return av_sample_fmt_is_planar(h->streams[stream_index]->codecpar->format) ?
               AVERROR(EINVAL) : 0;

    pkt.data = (*frame)->data[0];
    pkt.size = (*frame)->nb_samples * av_get_bytes_per_sample((*frame)->format) * (*frame)->channels;
    pkt.dts = (*frame)->pkt_dts;
    pkt.duration = (*frame)->pkt_duration;
    return pulse_write_packet(h, &pkt);
}
