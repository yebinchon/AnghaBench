
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pkt ;
typedef scalar_t__ jack_nframes_t ;
struct TYPE_7__ {scalar_t__ max; } ;
typedef TYPE_1__ jack_latency_range_t ;
struct TYPE_9__ {double pts; scalar_t__ data; } ;
struct TYPE_8__ {double sample_rate; int buffer_size; int pkt_xrun; int nports; int packet_count; int filled_pkts; int * ports; int new_pkts; int timefilter; int client; } ;
typedef TYPE_2__ JackData ;
typedef TYPE_3__ AVPacket ;


 int JackCaptureLatency ;
 int av_fifo_generic_read (int ,TYPE_3__*,int,int *) ;
 int av_fifo_generic_write (int ,TYPE_3__*,int,int *) ;
 int av_fifo_size (int ) ;
 int av_fifo_space (int ) ;
 double av_gettime () ;
 double ff_timefilter_update (int ,double,int) ;
 scalar_t__ jack_frames_since_cycle_start (int ) ;
 float* jack_port_get_buffer (int ,int) ;
 int jack_port_get_latency_range (int ,int ,TYPE_1__*) ;
 int sem_post (int *) ;

__attribute__((used)) static int process_callback(jack_nframes_t nframes, void *arg)
{



    int i, j;
    JackData *self = arg;
    float * buffer;
    jack_nframes_t latency, cycle_delay;
    AVPacket pkt;
    float *pkt_data;
    double cycle_time;

    if (!self->client)
        return 0;


    cycle_delay = jack_frames_since_cycle_start(self->client);


    cycle_time = ff_timefilter_update(self->timefilter,
                                      av_gettime() / 1000000.0 - (double) cycle_delay / self->sample_rate,
                                      self->buffer_size);


    if ((av_fifo_size(self->new_pkts) < sizeof(pkt)) || (av_fifo_space(self->filled_pkts) < sizeof(pkt))) {
        self->pkt_xrun = 1;
        return 0;
    }


    av_fifo_generic_read(self->new_pkts, &pkt, sizeof(pkt), ((void*)0));

    pkt_data = (float *) pkt.data;
    latency = 0;


    for (i = 0; i < self->nports; i++) {
        jack_latency_range_t range;
        jack_port_get_latency_range(self->ports[i], JackCaptureLatency, &range);
        latency += range.max;
        buffer = jack_port_get_buffer(self->ports[i], self->buffer_size);
        for (j = 0; j < self->buffer_size; j++)
            pkt_data[j * self->nports + i] = buffer[j];
    }


    pkt.pts = (cycle_time - (double) latency / (self->nports * self->sample_rate)) * 1000000.0;


    av_fifo_generic_write(self->filled_pkts, &pkt, sizeof(pkt), ((void*)0));
    sem_post(&self->packet_count);

    return 0;
}
