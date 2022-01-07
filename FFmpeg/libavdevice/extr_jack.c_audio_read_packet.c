
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct timespec {int tv_sec; int member_1; int member_0; } ;
typedef int errbuf ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int activated; int filled_pkts; scalar_t__ jack_xrun; scalar_t__ pkt_xrun; int client; int packet_count; int buffer_size; int sample_rate; } ;
typedef TYPE_1__ JackData ;
typedef int AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (scalar_t__) ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int AV_LOG_WARNING ;
 scalar_t__ EIO ;
 scalar_t__ ETIMEDOUT ;
 int av_fifo_generic_read (int ,int *,int,int *) ;
 int av_gettime () ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int av_strerror (int,char*,int) ;
 scalar_t__ errno ;
 int jack_activate (int ) ;
 scalar_t__ sem_timedwait (int *,struct timespec*) ;
 int supply_new_packets (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int audio_read_packet(AVFormatContext *context, AVPacket *pkt)
{
    JackData *self = context->priv_data;
    struct timespec timeout = {0, 0};
    int test;





    if (!self->activated) {
        if (!jack_activate(self->client)) {
            self->activated = 1;
            av_log(context, AV_LOG_INFO,
                   "JACK client registered and activated (rate=%dHz, buffer_size=%d frames)\n",
                   self->sample_rate, self->buffer_size);
        } else {
            av_log(context, AV_LOG_ERROR, "Unable to activate JACK client\n");
            return AVERROR(EIO);
        }
    }


    timeout.tv_sec = av_gettime() / 1000000 + 2;
    if (sem_timedwait(&self->packet_count, &timeout)) {
        if (errno == ETIMEDOUT) {
            av_log(context, AV_LOG_ERROR,
                   "Input error: timed out when waiting for JACK process callback output\n");
        } else {
            char errbuf[128];
            int ret = AVERROR(errno);
            av_strerror(ret, errbuf, sizeof(errbuf));
            av_log(context, AV_LOG_ERROR, "Error while waiting for audio packet: %s\n",
                   errbuf);
        }
        if (!self->client)
            av_log(context, AV_LOG_ERROR, "Input error: JACK server is gone\n");

        return AVERROR(EIO);
    }

    if (self->pkt_xrun) {
        av_log(context, AV_LOG_WARNING, "Audio packet xrun\n");
        self->pkt_xrun = 0;
    }

    if (self->jack_xrun) {
        av_log(context, AV_LOG_WARNING, "JACK xrun\n");
        self->jack_xrun = 0;
    }


    av_fifo_generic_read(self->filled_pkts, pkt, sizeof(*pkt), ((void*)0));

    if ((test = supply_new_packets(self, context)))
        return test;

    return 0;
}
