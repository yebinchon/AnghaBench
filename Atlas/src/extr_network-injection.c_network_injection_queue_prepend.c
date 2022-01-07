
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_injection_queue ;
typedef int injection ;


 int g_queue_push_head (int *,int *) ;

void network_injection_queue_prepend(network_injection_queue *q, injection *inj) {
 g_queue_push_head(q, inj);
}
