
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_dynvar_t ;
struct TYPE_4__ {int dtds_state; TYPE_2__* dtds_percpu; } ;
typedef TYPE_1__ dtrace_dstate_t ;
struct TYPE_5__ {int * dtdsc_rinsing; int * dtdsc_clean; int * dtdsc_dirty; } ;
typedef TYPE_2__ dtrace_dstate_percpu_t ;


 int ASSERT (int ) ;
 int DTRACE_DSTATE_CLEAN ;
 scalar_t__ NCPU ;
 int * dtrace_casptr (int **,int *,int *) ;
 int dtrace_membar_producer () ;
 int dtrace_sync () ;

__attribute__((used)) static void
dtrace_dynvar_clean(dtrace_dstate_t *dstate)
{
 dtrace_dynvar_t *dirty;
 dtrace_dstate_percpu_t *dcpu;
 int i, work = 0;

 for (i = 0; i < (int)NCPU; i++) {
  dcpu = &dstate->dtds_percpu[i];

  ASSERT(dcpu->dtdsc_rinsing == ((void*)0));




  if (dcpu->dtdsc_dirty == ((void*)0))
   continue;







  if (dcpu->dtdsc_clean != ((void*)0))
   continue;

  work = 1;




  do {
   dirty = dcpu->dtdsc_dirty;
   dcpu->dtdsc_rinsing = dirty;
   dtrace_membar_producer();
  } while (dtrace_casptr(&dcpu->dtdsc_dirty,
      dirty, ((void*)0)) != dirty);
 }

 if (!work) {



  return;
 }

 dtrace_sync();

 for (i = 0; i < (int)NCPU; i++) {
  dcpu = &dstate->dtds_percpu[i];

  if (dcpu->dtdsc_rinsing == ((void*)0))
   continue;





  ASSERT(dcpu->dtdsc_clean == ((void*)0));
  dcpu->dtdsc_clean = dcpu->dtdsc_rinsing;
  dcpu->dtdsc_rinsing = ((void*)0);
 }
 dtrace_sync();

 dstate->dtds_state = DTRACE_DSTATE_CLEAN;
}
