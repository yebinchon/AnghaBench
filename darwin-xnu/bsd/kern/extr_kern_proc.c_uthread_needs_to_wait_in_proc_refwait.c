
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ uu_proc_refcount; } ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* current_uthread () ;

__attribute__((used)) static boolean_t
uthread_needs_to_wait_in_proc_refwait(void) {
 uthread_t uth = current_uthread();







 if (uth->uu_proc_refcount == 0)
  return TRUE;

 return FALSE;
}
