
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct wq_prepost {int dummy; } ;


 int wq_prepost_release_rlist (struct wq_prepost*) ;
 struct wq_prepost* wq_prepost_rfirst (int ) ;
 int wqdbg_v (char*,int ) ;

void waitq_prepost_release_reserve(uint64_t id)
{
 struct wq_prepost *wqp;

 wqdbg_v("releasing reserved preposts starting at: 0x%llx", id);

 wqp = wq_prepost_rfirst(id);
 if (!wqp)
  return;

 wq_prepost_release_rlist(wqp);
}
