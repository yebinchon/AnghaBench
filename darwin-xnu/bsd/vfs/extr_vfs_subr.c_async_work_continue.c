
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vnode_t ;
typedef int thread_continue_t ;
struct async_work_lst {int dummy; } ;


 scalar_t__ NULLVP ;
 scalar_t__ TAILQ_EMPTY (struct async_work_lst*) ;
 scalar_t__ TAILQ_FIRST (struct async_work_lst*) ;
 int THREAD_UNINT ;
 int assert_wait (struct async_work_lst*,int ) ;
 int async_work_handled ;
 int panic (char*,scalar_t__) ;
 scalar_t__ process_vp (scalar_t__,int ,int*) ;
 int thread_block (int ) ;
 struct async_work_lst vnode_async_work_list ;
 int vnode_list_lock () ;
 int vnode_list_unlock () ;

__attribute__((used)) __attribute__((noreturn))
static void
async_work_continue(void)
{
 struct async_work_lst *q;
 int deferred;
 vnode_t vp;

 q = &vnode_async_work_list;

 for (;;) {

  vnode_list_lock();

  if ( TAILQ_EMPTY(q) ) {
   assert_wait(q, (THREAD_UNINT));

   vnode_list_unlock();

   thread_block((thread_continue_t)async_work_continue);

   continue;
  }
  async_work_handled++;

  vp = TAILQ_FIRST(q);

  vp = process_vp(vp, 0, &deferred);

  if (vp != NULLVP)
   panic("found VBAD vp (%p) on async queue", vp);
 }
}
