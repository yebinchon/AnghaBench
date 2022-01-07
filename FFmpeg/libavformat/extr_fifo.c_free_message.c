
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int pkt; } ;
typedef TYPE_1__ FifoMessage ;


 scalar_t__ FIFO_WRITE_PACKET ;
 int av_packet_unref (int *) ;

__attribute__((used)) static void free_message(void *msg)
{
    FifoMessage *fifo_msg = msg;

    if (fifo_msg->type == FIFO_WRITE_PACKET)
        av_packet_unref(&fifo_msg->pkt);
}
