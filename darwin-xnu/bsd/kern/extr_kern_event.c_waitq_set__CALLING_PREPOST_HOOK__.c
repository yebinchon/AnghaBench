
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqworkq {int dummy; } ;
struct kqworkloop {int dummy; } ;
struct kqueue {int kq_state; } ;


 int KQWL_BUCKET_STAYACTIVE ;
 int KQWQ_QOS_MANAGER ;
 int KQ_WORKLOOP ;
 int KQ_WORKQ ;
 int kqworkloop_request_help (struct kqworkloop*,int ) ;
 int kqworkq_request_help (struct kqworkq*,int ) ;

void
waitq_set__CALLING_PREPOST_HOOK__(void *kq_hook, void *knote_hook, int qos)
{
#pragma unused(knote_hook, qos)

 struct kqueue *kq = (struct kqueue *)kq_hook;

 if (kq->kq_state & KQ_WORKQ) {
  struct kqworkq *kqwq = (struct kqworkq *)kq;

  kqworkq_request_help(kqwq, KQWQ_QOS_MANAGER);
 } else if (kq->kq_state & KQ_WORKLOOP) {
  struct kqworkloop *kqwl = (struct kqworkloop *)kq;

  kqworkloop_request_help(kqwl, KQWL_BUCKET_STAYACTIVE);
 }
}
