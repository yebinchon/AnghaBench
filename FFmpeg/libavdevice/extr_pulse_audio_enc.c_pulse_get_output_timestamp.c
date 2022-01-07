
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ pa_usec_t ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ timestamp; int mainloop; int stream; } ;
typedef TYPE_1__ PulseData ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ av_gettime () ;
 int pa_stream_get_latency (int ,scalar_t__*,int*) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;

__attribute__((used)) static void pulse_get_output_timestamp(AVFormatContext *h, int stream, int64_t *dts, int64_t *wall)
{
    PulseData *s = h->priv_data;
    pa_usec_t latency;
    int neg;
    pa_threaded_mainloop_lock(s->mainloop);
    pa_stream_get_latency(s->stream, &latency, &neg);
    pa_threaded_mainloop_unlock(s->mainloop);
    if (wall)
        *wall = av_gettime();
    if (dts)
        *dts = s->timestamp - (neg ? -latency : latency);
}
