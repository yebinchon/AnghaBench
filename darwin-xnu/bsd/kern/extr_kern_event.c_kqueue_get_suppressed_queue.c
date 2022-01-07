
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct kqtailq {int dummy; } ;
struct knote {int kn_qos_index; } ;
struct TYPE_12__ {TYPE_4__* kqf; TYPE_3__* kqwl; TYPE_1__* kq; int kqwq; } ;
typedef TYPE_5__ kqueue_t ;
struct TYPE_13__ {struct kqtailq kqr_suppressed; } ;
struct TYPE_11__ {struct kqtailq kqf_suppressed; } ;
struct TYPE_9__ {struct kqtailq kqr_suppressed; } ;
struct TYPE_10__ {TYPE_2__ kqwl_request; } ;
struct TYPE_8__ {int kq_state; } ;


 int KQ_WORKLOOP ;
 int KQ_WORKQ ;
 TYPE_6__* kqworkq_get_request (int ,int ) ;

__attribute__((used)) static struct kqtailq *
kqueue_get_suppressed_queue(kqueue_t kq, struct knote *kn)
{
 if (kq.kq->kq_state & KQ_WORKQ) {
  return &kqworkq_get_request(kq.kqwq, kn->kn_qos_index)->kqr_suppressed;
 } else if (kq.kq->kq_state & KQ_WORKLOOP) {
  return &kq.kqwl->kqwl_request.kqr_suppressed;
 } else {
  return &kq.kqf->kqf_suppressed;
 }
}
