#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int ss_size; scalar_t__ ss_sp; } ;
struct TYPE_6__ {TYPE_1__ uc_stack; int /*<<< orphan*/ * uc_link; } ;
typedef  TYPE_2__ ucontext_t ;
typedef  int /*<<< orphan*/  cothread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  co_primary ; 
 int /*<<< orphan*/ * co_running ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void (*) (),int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int) ; 

cothread_t FUNC4(unsigned int heapsize, void (*coentry)(void)) {
  if(!co_running) co_running = &co_primary;
  ucontext_t *thread = (ucontext_t*)FUNC3(sizeof(ucontext_t));
  if(thread) {
    if((!FUNC1(thread) && !(thread->uc_stack.ss_sp = 0)) && (thread->uc_stack.ss_sp = FUNC3(heapsize))) {
      thread->uc_link = co_running;
      thread->uc_stack.ss_size = heapsize;
      FUNC2(thread, coentry, 0);
    } else {
      FUNC0((cothread_t)thread);
      thread = 0;
    }
  }
  return (cothread_t)thread;
}