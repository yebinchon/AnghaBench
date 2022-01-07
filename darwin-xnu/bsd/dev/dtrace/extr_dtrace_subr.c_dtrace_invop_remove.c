
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* dtih_func ) (uintptr_t,uintptr_t*,uintptr_t) ;struct TYPE_4__* dtih_next; } ;
typedef TYPE_1__ dtrace_invop_hdlr_t ;


 int ASSERT (int) ;
 TYPE_1__* dtrace_invop_hdlr ;
 int kmem_free (TYPE_1__*,int) ;
 int panic (char*) ;

void
dtrace_invop_remove(int (*func)(uintptr_t, uintptr_t *, uintptr_t))
{
 dtrace_invop_hdlr_t *hdlr = dtrace_invop_hdlr, *prev = ((void*)0);

 for (;;) {
  if (hdlr == ((void*)0))
   panic("attempt to remove non-existent invop handler");

  if (hdlr->dtih_func == func)
   break;

  prev = hdlr;
  hdlr = hdlr->dtih_next;
 }

 if (prev == ((void*)0)) {
  ASSERT(dtrace_invop_hdlr == hdlr);
  dtrace_invop_hdlr = hdlr->dtih_next;
 } else {
  ASSERT(dtrace_invop_hdlr != hdlr);
  prev->dtih_next = hdlr->dtih_next;
 }

 kmem_free(hdlr, sizeof (dtrace_invop_hdlr_t));
}
