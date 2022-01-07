
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int context; int libc_reent; } ;
typedef TYPE_1__ lwp_cntrl ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int * __lwp_thr_libc_reent ;
 scalar_t__ _context_switch_want ;
 int _cpu_context_switch (void*,void*) ;
 int _cpu_context_switch_ex (void*,void*) ;
 TYPE_1__* _thr_executing ;
 TYPE_1__* _thr_heir ;
 int _thread_dispatch_disable_level ;

void __thread_dispatch()
{
 u32 level;
 lwp_cntrl *exec,*heir;

 _CPU_ISR_Disable(level);
 exec = _thr_executing;
 while(_context_switch_want==TRUE) {
  heir = _thr_heir;
  _thread_dispatch_disable_level = 1;
  _context_switch_want = FALSE;
  _thr_executing = heir;
  _CPU_ISR_Restore(level);

  if(__lwp_thr_libc_reent) {
   exec->libc_reent = *__lwp_thr_libc_reent;
   *__lwp_thr_libc_reent = heir->libc_reent;
  }



  _cpu_context_switch((void*)&exec->context,(void*)&heir->context);

  exec = _thr_executing;
  _CPU_ISR_Disable(level);
 }
 _thread_dispatch_disable_level = 0;
 _CPU_ISR_Restore(level);
}
