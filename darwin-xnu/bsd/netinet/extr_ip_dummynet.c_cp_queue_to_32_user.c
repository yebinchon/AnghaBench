
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_flow_queue_32 {int F; int S; int sched_time; int heap_pos; int q_time; int random; int count; int avg; int hash_slot; int drops; int tot_bytes; int tot_pkts; int numbytes; int len_bytes; int len; int id; } ;
struct dn_flow_queue {int F; int S; int sched_time; int heap_pos; int q_time; int random; int count; int avg; int hash_slot; int drops; int tot_bytes; int tot_pkts; int numbytes; int len_bytes; int len; int id; } ;



__attribute__((used)) static
void cp_queue_to_32_user( struct dn_flow_queue *q, struct dn_flow_queue_32 *qp)
{
 qp->id = q->id;
 qp->len = q->len;
 qp->len_bytes = q->len_bytes;
 qp->numbytes = q->numbytes;
 qp->tot_pkts = q->tot_pkts;
 qp->tot_bytes = q->tot_bytes;
 qp->drops = q->drops;
 qp->hash_slot = q->hash_slot;
 qp->avg = q->avg;
 qp->count = q->count;
 qp->random = q->random;
 qp->q_time = q->q_time;
 qp->heap_pos = q->heap_pos;
 qp->sched_time = q->sched_time;
 qp->S = q->S;
 qp->F = q->F;
}
