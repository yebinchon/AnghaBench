
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* dtih_func ) (uintptr_t,uintptr_t*,uintptr_t) ;struct TYPE_4__* dtih_next; } ;
typedef TYPE_1__ dtrace_invop_hdlr_t ;


 int KM_SLEEP ;
 TYPE_1__* dtrace_invop_hdlr ;
 TYPE_1__* kmem_alloc (int,int ) ;

void
dtrace_invop_add(int (*func)(uintptr_t, uintptr_t *, uintptr_t))
{
 dtrace_invop_hdlr_t *hdlr;

 hdlr = kmem_alloc(sizeof (dtrace_invop_hdlr_t), KM_SLEEP);
 hdlr->dtih_func = func;
 hdlr->dtih_next = dtrace_invop_hdlr;
 dtrace_invop_hdlr = hdlr;
}
