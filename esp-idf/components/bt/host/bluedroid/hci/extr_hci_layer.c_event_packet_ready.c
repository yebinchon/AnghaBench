
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fixed_queue_t ;
struct TYPE_2__ {int (* fragment_and_dispatch ) (int *) ;} ;
typedef int BT_HDR ;


 int FIXED_QUEUE_MAX_TIMEOUT ;
 scalar_t__ fixed_queue_dequeue (int *,int ) ;
 TYPE_1__* packet_fragmenter ;
 int stub1 (int *) ;

__attribute__((used)) static void event_packet_ready(fixed_queue_t *queue)
{
    BT_HDR *packet = (BT_HDR *)fixed_queue_dequeue(queue, FIXED_QUEUE_MAX_TIMEOUT);


    packet_fragmenter->fragment_and_dispatch(packet);
}
