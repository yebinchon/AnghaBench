
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kdp_callout {struct kdp_callout* callout_next; scalar_t__ callout_in_progress; int callout_arg; int (* callout_fn ) (int ,int ) ;} ;
typedef int kdp_event_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 struct kdp_callout* kdp_callout_list ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
kdp_callouts(kdp_event_t event)
{
 struct kdp_callout *kcp = kdp_callout_list;

 while (kcp) {
  if (!kcp->callout_in_progress) {
   kcp->callout_in_progress = TRUE;
   kcp->callout_fn(kcp->callout_arg, event);
   kcp->callout_in_progress = FALSE;
  }
  kcp = kcp->callout_next;
 }
}
