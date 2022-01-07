
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int dummy; } ;
struct proc {struct workqueue* p_wqptr; } ;


 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 struct workqueue* WQPTR_IS_INITING_VALUE ;
 int assert_wait (struct workqueue**,int ) ;
 int proc_lock (struct proc*) ;
 int proc_unlock (struct proc*) ;
 int thread_block (int ) ;

__attribute__((used)) static bool
proc_init_wqptr_or_wait(struct proc *p)
{
 struct workqueue *wq;

 proc_lock(p);
 wq = p->p_wqptr;

 if (wq == ((void*)0)) {
  p->p_wqptr = WQPTR_IS_INITING_VALUE;
  proc_unlock(p);
  return 1;
 }

 if (wq == WQPTR_IS_INITING_VALUE) {
  assert_wait(&p->p_wqptr, THREAD_UNINT);
  proc_unlock(p);
  thread_block(THREAD_CONTINUE_NULL);
 } else {
  proc_unlock(p);
 }
 return 0;
}
