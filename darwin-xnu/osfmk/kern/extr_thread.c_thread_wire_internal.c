
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int kern_return_t ;
typedef int * host_priv_t ;
typedef int boolean_t ;
struct TYPE_4__ {int options; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int TH_OPT_VMPRIV ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 int realhost ;
 int vm_page_free_reserve (int) ;

kern_return_t
thread_wire_internal(
 host_priv_t host_priv,
 thread_t thread,
 boolean_t wired,
 boolean_t *prev_state)
{
 if (host_priv == ((void*)0) || thread != current_thread())
  return (KERN_INVALID_ARGUMENT);

 assert(host_priv == &realhost);

 if (prev_state)
     *prev_state = (thread->options & TH_OPT_VMPRIV) != 0;

 if (wired) {
     if (!(thread->options & TH_OPT_VMPRIV))
      vm_page_free_reserve(1);
     thread->options |= TH_OPT_VMPRIV;
 }
 else {
     if (thread->options & TH_OPT_VMPRIV)
      vm_page_free_reserve(-1);
     thread->options &= ~TH_OPT_VMPRIV;
 }

 return (KERN_SUCCESS);
}
