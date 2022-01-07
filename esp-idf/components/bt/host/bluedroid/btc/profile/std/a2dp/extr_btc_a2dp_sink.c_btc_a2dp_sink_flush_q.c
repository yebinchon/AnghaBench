
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixed_queue_t ;


 int fixed_queue_dequeue (int *,int ) ;
 int fixed_queue_is_empty (int *) ;
 int osi_free (int ) ;

__attribute__((used)) static void btc_a2dp_sink_flush_q(fixed_queue_t *p_q)
{
    while (! fixed_queue_is_empty(p_q)) {
        osi_free(fixed_queue_dequeue(p_q, 0));
    }
}
