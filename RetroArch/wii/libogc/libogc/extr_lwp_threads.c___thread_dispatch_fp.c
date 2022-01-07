
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int context; } ;
typedef TYPE_1__ lwp_cntrl ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __lwp_dumpcontext_fp (TYPE_1__*,TYPE_1__*) ;
 int __lwp_thread_isallocatedfp (TYPE_1__*) ;
 int _cpu_context_restore_fp (int *) ;
 int _cpu_context_save_fp (int *) ;
 TYPE_1__* _thr_allocated_fp ;
 TYPE_1__* _thr_executing ;

void __thread_dispatch_fp()
{
 u32 level;
 lwp_cntrl *exec;

 _CPU_ISR_Disable(level);
 exec = _thr_executing;



 if(!__lwp_thread_isallocatedfp(exec)) {
  if(_thr_allocated_fp) _cpu_context_save_fp(&_thr_allocated_fp->context);
  _cpu_context_restore_fp(&exec->context);
  _thr_allocated_fp = exec;
 }
 _CPU_ISR_Restore(level);
}
