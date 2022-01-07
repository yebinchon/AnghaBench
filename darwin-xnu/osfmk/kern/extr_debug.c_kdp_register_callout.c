
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kdp_callout {struct kdp_callout* callout_next; int callout_in_progress; void* callout_arg; int callout_fn; } ;
typedef int kdp_callout_fn_t ;


 int FALSE ;
 int OSCompareAndSwapPtr (struct kdp_callout*,struct kdp_callout*,struct kdp_callout**) ;
 struct kdp_callout* kalloc (int) ;
 struct kdp_callout* kdp_callout_list ;
 int panic (char*) ;

void
kdp_register_callout(kdp_callout_fn_t fn, void * arg)
{
 struct kdp_callout * kcp;
 struct kdp_callout * list_head;

 kcp = kalloc(sizeof(*kcp));
 if (kcp == ((void*)0))
  panic("kdp_register_callout() kalloc failed");

 kcp->callout_fn = fn;
 kcp->callout_arg = arg;
 kcp->callout_in_progress = FALSE;


 do {
  list_head = kdp_callout_list;
  kcp->callout_next = list_head;
 } while (!OSCompareAndSwapPtr(list_head, kcp, &kdp_callout_list));
}
