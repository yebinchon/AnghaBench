
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqworkq {struct kqrequest* kqwq_request; } ;
struct kqrequest {int dummy; } ;
typedef size_t kq_index_t ;


 size_t KQWQ_NBUCKETS ;
 int assert (int) ;

struct kqrequest *
kqworkq_get_request(struct kqworkq *kqwq, kq_index_t qos_index)
{
 assert(qos_index < KQWQ_NBUCKETS);
 return &kqwq->kqwq_request[qos_index];
}
