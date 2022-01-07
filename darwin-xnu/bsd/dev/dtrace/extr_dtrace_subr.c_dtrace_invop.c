
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* dtih_func ) (uintptr_t,uintptr_t*,uintptr_t) ;struct TYPE_3__* dtih_next; } ;
typedef TYPE_1__ dtrace_invop_hdlr_t ;


 TYPE_1__* dtrace_invop_hdlr ;
 int stub1 (uintptr_t,uintptr_t*,uintptr_t) ;

int
dtrace_invop(uintptr_t addr, uintptr_t *stack, uintptr_t eax)
{
 dtrace_invop_hdlr_t *hdlr;
 int rval;

 for (hdlr = dtrace_invop_hdlr; hdlr != ((void*)0); hdlr = hdlr->dtih_next) {
  if ((rval = hdlr->dtih_func(addr, stack, eax)) != 0)
   return (rval);
 }

 return (0);
}
