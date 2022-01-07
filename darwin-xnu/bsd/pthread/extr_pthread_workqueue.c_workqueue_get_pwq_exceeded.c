
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_workqueueinfo {int pwq_state; } ;
typedef int * proc_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT ;
 int WQ_EXCEEDED_TOTAL_THREAD_LIMIT ;
 int WQ_FLAGS_AVAILABLE ;
 int assert (int ) ;
 int fill_procworkqueue (int *,struct proc_workqueueinfo*) ;

boolean_t
workqueue_get_pwq_exceeded(void *v, boolean_t *exceeded_total,
  boolean_t *exceeded_constrained)
{
 proc_t p = v;
 struct proc_workqueueinfo pwqinfo;
 int err;

 assert(p != ((void*)0));
 assert(exceeded_total != ((void*)0));
 assert(exceeded_constrained != ((void*)0));

 err = fill_procworkqueue(p, &pwqinfo);
 if (err) {
  return FALSE;
 }
 if (!(pwqinfo.pwq_state & WQ_FLAGS_AVAILABLE)) {
  return FALSE;
 }

 *exceeded_total = (pwqinfo.pwq_state & WQ_EXCEEDED_TOTAL_THREAD_LIMIT);
 *exceeded_constrained = (pwqinfo.pwq_state & WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT);

 return TRUE;
}
