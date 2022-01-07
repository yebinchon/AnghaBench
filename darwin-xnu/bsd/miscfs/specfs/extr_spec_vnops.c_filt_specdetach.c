
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {scalar_t__ kn_hook_data; } ;
struct TYPE_2__ {int kq_wqs; } ;


 int knote_clearstayactive (struct knote*) ;
 TYPE_1__* knote_get_kq (struct knote*) ;
 int waitq_unlink_by_prepost_id (scalar_t__,int *) ;

__attribute__((used)) static void
filt_specdetach(struct knote *kn)
{
 knote_clearstayactive(kn);
 if (kn->kn_hook_data) {
  waitq_unlink_by_prepost_id(kn->kn_hook_data, &(knote_get_kq(kn)->kq_wqs));
  kn->kn_hook_data = 0;
 }
}
