
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int writable_size ;
typedef scalar_t__ int64_t ;
struct TYPE_18__ {TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_17__ {scalar_t__ dts; scalar_t__ duration; scalar_t__ size; int data; } ;
struct TYPE_16__ {int member_0; int member_1; } ;
struct TYPE_15__ {int time_base; TYPE_1__* codecpar; } ;
struct TYPE_14__ {scalar_t__ timestamp; scalar_t__ minreq; int mainloop; int stream; scalar_t__ nonblocking; } ;
struct TYPE_13__ {scalar_t__ channels; int format; int sample_rate; } ;
typedef TYPE_2__ PulseData ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVRational ;
typedef TYPE_5__ AVPacket ;
typedef TYPE_6__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_DEV_TO_APP_BUFFER_WRITABLE ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_NOPTS_VALUE ;
 int EAGAIN ;
 int PA_SEEK_RELATIVE ;
 int PA_STREAM_IS_GOOD (int ) ;
 scalar_t__ av_get_bytes_per_sample (int ) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 scalar_t__ av_rescale_q (scalar_t__,TYPE_4__,int ) ;
 int avdevice_dev_to_app_control_message (TYPE_6__*,int ,scalar_t__*,int) ;
 int pa_stream_get_state (int ) ;
 scalar_t__ pa_stream_writable_size (int ) ;
 int pa_stream_write (int ,int ,scalar_t__,int *,int ,int ) ;
 int pa_strerror (int) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int pa_threaded_mainloop_wait (int ) ;
 int pulse_flash_stream (TYPE_2__*) ;

__attribute__((used)) static int pulse_write_packet(AVFormatContext *h, AVPacket *pkt)
{
    PulseData *s = h->priv_data;
    int ret;
    int64_t writable_size;

    if (!pkt)
        return pulse_flash_stream(s);

    if (pkt->dts != AV_NOPTS_VALUE)
        s->timestamp = pkt->dts;

    if (pkt->duration) {
        s->timestamp += pkt->duration;
    } else {
        AVStream *st = h->streams[0];
        AVRational r = { 1, st->codecpar->sample_rate };
        int64_t samples = pkt->size / (av_get_bytes_per_sample(st->codecpar->format) * st->codecpar->channels);
        s->timestamp += av_rescale_q(samples, r, st->time_base);
    }

    pa_threaded_mainloop_lock(s->mainloop);
    if (!PA_STREAM_IS_GOOD(pa_stream_get_state(s->stream))) {
        av_log(s, AV_LOG_ERROR, "PulseAudio stream is in invalid state.\n");
        goto fail;
    }
    while (pa_stream_writable_size(s->stream) < s->minreq) {
        if (s->nonblocking) {
            pa_threaded_mainloop_unlock(s->mainloop);
            return AVERROR(EAGAIN);
        } else
            pa_threaded_mainloop_wait(s->mainloop);
    }

    if ((ret = pa_stream_write(s->stream, pkt->data, pkt->size, ((void*)0), 0, PA_SEEK_RELATIVE)) < 0) {
        av_log(s, AV_LOG_ERROR, "pa_stream_write failed: %s\n", pa_strerror(ret));
        goto fail;
    }
    if ((writable_size = pa_stream_writable_size(s->stream)) >= s->minreq)
        avdevice_dev_to_app_control_message(h, AV_DEV_TO_APP_BUFFER_WRITABLE, &writable_size, sizeof(writable_size));

    pa_threaded_mainloop_unlock(s->mainloop);

    return 0;
  fail:
    pa_threaded_mainloop_unlock(s->mainloop);
    return AVERROR_EXTERNAL;
}
