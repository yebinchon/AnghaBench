#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  cothread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ co_active_ ; 
 int /*<<< orphan*/  co_thunk ; 

cothread_t FUNC3(unsigned int heapsize, void (*coentry)(void)) {
  if(!co_active_) {
    FUNC0(0);
    co_active_ = FUNC2();
  }
  return (cothread_t)FUNC1(heapsize, co_thunk, (void*)coentry);
}