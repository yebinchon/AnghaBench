
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqworkloop {int dummy; } ;
typedef int kq_index_t ;


 int KQWL_UTQ_UPDATE_WAKEUP_OVERRIDE ;
 int kq_req_lock (struct kqworkloop*) ;
 int kq_req_unlock (struct kqworkloop*) ;
 int kqworkloop_update_threads_qos (struct kqworkloop*,int ,int ) ;

__attribute__((used)) static void
kqworkloop_update_override(struct kqworkloop *kqwl, kq_index_t override_index)
{
 kq_req_lock(kqwl);
 kqworkloop_update_threads_qos(kqwl, KQWL_UTQ_UPDATE_WAKEUP_OVERRIDE,
   override_index);
 kq_req_unlock(kqwl);
}
