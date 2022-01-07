
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqworkloop {int dummy; } ;
typedef scalar_t__ kq_index_t ;


 scalar_t__ KQWL_NBUCKETS ;
 int KQWL_UTQ_UPDATE_WAKEUP_QOS ;
 int assert (int) ;
 int kq_req_lock (struct kqworkloop*) ;
 int kq_req_unlock (struct kqworkloop*) ;
 int kqworkloop_update_threads_qos (struct kqworkloop*,int ,scalar_t__) ;

__attribute__((used)) static void
kqworkloop_request_help(struct kqworkloop *kqwl, kq_index_t qos_index)
{

 assert(qos_index < KQWL_NBUCKETS);

 kq_req_lock(kqwl);
 kqworkloop_update_threads_qos(kqwl, KQWL_UTQ_UPDATE_WAKEUP_QOS, qos_index);
 kq_req_unlock(kqwl);
}
