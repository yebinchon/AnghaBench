
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_injection_queue ;
typedef int injection ;


 int * g_queue_pop_head (int *) ;
 int injection_free (int *) ;

void network_injection_queue_reset(network_injection_queue *q) {
 injection *inj;
 if (!q) return;

 while ((inj = g_queue_pop_head(q))) injection_free(inj);
}
