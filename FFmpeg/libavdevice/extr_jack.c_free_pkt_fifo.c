
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pkt ;
typedef int AVPacket ;
typedef int AVFifoBuffer ;


 int av_fifo_freep (int **) ;
 int av_fifo_generic_read (int *,int *,int,int *) ;
 scalar_t__ av_fifo_size (int *) ;
 int av_packet_unref (int *) ;

__attribute__((used)) static void free_pkt_fifo(AVFifoBuffer **fifo)
{
    AVPacket pkt;
    while (av_fifo_size(*fifo)) {
        av_fifo_generic_read(*fifo, &pkt, sizeof(pkt), ((void*)0));
        av_packet_unref(&pkt);
    }
    av_fifo_freep(fifo);
}
