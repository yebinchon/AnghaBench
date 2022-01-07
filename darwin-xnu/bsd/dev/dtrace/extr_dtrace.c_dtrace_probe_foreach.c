
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dtpv_arg; int dtpv_pops; } ;
typedef TYPE_1__ dtrace_provider_t ;
struct TYPE_5__ {int dtpr_arg; TYPE_1__* dtpr_provider; int * dtpr_ecb; } ;
typedef TYPE_2__ dtrace_probe_t ;
typedef int dtrace_icookie_t ;


 int dtrace_interrupt_disable () ;
 int dtrace_interrupt_enable (int ) ;
 int dtrace_nprobes ;
 TYPE_2__** dtrace_probes ;

__attribute__((used)) static void
dtrace_probe_foreach(uintptr_t offs)
{
 dtrace_provider_t *prov;
 void (*func)(void *, dtrace_id_t, void *);
 dtrace_probe_t *probe;
 dtrace_icookie_t cookie;
 int i;






 cookie = dtrace_interrupt_disable();

 for (i = 0; i < dtrace_nprobes; i++) {
  if ((probe = dtrace_probes[i]) == ((void*)0))
   continue;

  if (probe->dtpr_ecb == ((void*)0)) {



   continue;
  }

  prov = probe->dtpr_provider;
  func = *((void(**)(void *, dtrace_id_t, void *))
      ((uintptr_t)&prov->dtpv_pops + offs));

  func(prov->dtpv_arg, i + 1, probe->dtpr_arg);
 }

 dtrace_interrupt_enable(cookie);
}
