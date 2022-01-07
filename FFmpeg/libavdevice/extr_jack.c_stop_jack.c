
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timefilter; int ports; int filled_pkts; int new_pkts; int packet_count; scalar_t__ client; scalar_t__ activated; } ;
typedef TYPE_1__ JackData ;


 int av_freep (int *) ;
 int ff_timefilter_destroy (int ) ;
 int free_pkt_fifo (int *) ;
 int jack_client_close (scalar_t__) ;
 int jack_deactivate (scalar_t__) ;
 int sem_destroy (int *) ;

__attribute__((used)) static void stop_jack(JackData *self)
{
    if (self->client) {
        if (self->activated)
            jack_deactivate(self->client);
        jack_client_close(self->client);
    }
    sem_destroy(&self->packet_count);
    free_pkt_fifo(&self->new_pkts);
    free_pkt_fifo(&self->filled_pkts);
    av_freep(&self->ports);
    ff_timefilter_destroy(self->timefilter);
}
