
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqtailq {int dummy; } ;
struct knote {int kn_qos_index; } ;


 int knote_get_kq (struct knote*) ;
 struct kqtailq* kqueue_get_queue (int ,int ) ;

__attribute__((used)) static struct kqtailq *
knote_get_queue(struct knote *kn)
{
 return kqueue_get_queue(knote_get_kq(kn), kn->kn_qos_index);
}
