
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
typedef TYPE_1__* task_t ;
typedef int boolean_t ;
struct TYPE_3__ {int xstate; } ;


 int AVX512 ;
 int FALSE ;
 int TRUE ;
 TYPE_1__* current_task () ;
 scalar_t__ current_thread () ;
 int fpu_savearea_promote_avx512 (scalar_t__) ;
 int ml_fpu_avx512_enabled () ;

boolean_t
fpu_thread_promote_avx512(thread_t thread)
{
 task_t task = current_task();

 if (thread != current_thread())
  return FALSE;
 if (!ml_fpu_avx512_enabled())
  return FALSE;

 fpu_savearea_promote_avx512(thread);


 task->xstate = AVX512;

 return TRUE;
}
