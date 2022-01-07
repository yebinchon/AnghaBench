
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
typedef int spl_t ;
struct TYPE_5__ {int options; } ;


 TYPE_1__* current_thread () ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;

void thread_set_options(uint32_t thopt) {
  spl_t x;
  thread_t t = current_thread();

  x = splsched();
  thread_lock(t);

  t->options |= thopt;

  thread_unlock(t);
  splx(x);
}
