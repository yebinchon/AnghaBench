
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int chunks; int len; } ;
typedef TYPE_1__ network_queue ;
struct TYPE_7__ {scalar_t__ len; } ;
typedef TYPE_2__ GString ;


 int g_queue_push_tail (int ,TYPE_2__*) ;

int network_queue_append(network_queue *queue, GString *s) {
 queue->len += s->len;

 g_queue_push_tail(queue->chunks, s);

 return 0;
}
