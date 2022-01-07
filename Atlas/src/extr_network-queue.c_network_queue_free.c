
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chunks; } ;
typedef TYPE_1__ network_queue ;
typedef int GString ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_queue_free (int ) ;
 int * g_queue_pop_head (int ) ;
 int g_string_free (int *,int ) ;

void network_queue_free(network_queue *queue) {
 GString *packet;

 if (!queue) return;

 while ((packet = g_queue_pop_head(queue->chunks))) g_string_free(packet, TRUE);

 g_queue_free(queue->chunks);

 g_free(queue);
}
