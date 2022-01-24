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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ num_threads ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ ready_thread_count ; 
 int /*<<< orphan*/  ready_thread_count_lock ; 
 int /*<<< orphan*/  start_cvar ; 
 int /*<<< orphan*/  threads_ready_cvar ; 

__attribute__((used)) static void *FUNC6(void *arg)
{
  int my_index = *((int *)arg);

  T_QUIET; FUNC0(FUNC4(&ready_thread_count_lock), "pthread_mutex_lock");
  ready_thread_count++;
  if(ready_thread_count == num_threads) {
    T_QUIET; FUNC0(FUNC2(&threads_ready_cvar), "pthread_cond_signal");
  }
  T_QUIET; FUNC0(FUNC3(&start_cvar, &ready_thread_count_lock), "pthread_cond_wait");
  T_QUIET; FUNC0(FUNC5(&ready_thread_count_lock), "pthread_mutex_unlock");

  FUNC1(my_index);
  return NULL;
}