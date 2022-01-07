
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_injection_queue ;


 int g_queue_free (int *) ;
 int network_injection_queue_reset (int *) ;

void network_injection_queue_free(network_injection_queue *q) {
 if (!q) return;

 network_injection_queue_reset(q);

 g_queue_free(q);
}
