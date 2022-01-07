
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqrequest {int kqr_override_index; int kqr_qos_index; } ;
struct kqworkloop {struct kqrequest kqwl_request; } ;
typedef int kq_index_t ;


 int MAX (int ,int ) ;

__attribute__((used)) static kq_index_t
kqworkloop_owner_override(struct kqworkloop *kqwl)
{
 struct kqrequest *kqr = &kqwl->kqwl_request;
 return MAX(kqr->kqr_qos_index, kqr->kqr_override_index);
}
