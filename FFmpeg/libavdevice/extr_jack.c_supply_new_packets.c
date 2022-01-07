
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pkt ;
struct TYPE_3__ {int buffer_size; int nports; int new_pkts; } ;
typedef TYPE_1__ JackData ;
typedef int AVPacket ;
typedef int AVFormatContext ;


 int AV_LOG_ERROR ;
 int av_fifo_generic_write (int ,int *,int,int *) ;
 int av_fifo_space (int ) ;
 int av_log (int *,int ,char*,int) ;
 int av_new_packet (int *,int) ;

__attribute__((used)) static int supply_new_packets(JackData *self, AVFormatContext *context)
{
    AVPacket pkt;
    int test, pkt_size = self->buffer_size * self->nports * sizeof(float);




    while (av_fifo_space(self->new_pkts) >= sizeof(pkt)) {
        if ((test = av_new_packet(&pkt, pkt_size)) < 0) {
            av_log(context, AV_LOG_ERROR, "Could not create packet of size %d\n", pkt_size);
            return test;
        }
        av_fifo_generic_write(self->new_pkts, &pkt, sizeof(pkt), ((void*)0));
    }
    return 0;
}
