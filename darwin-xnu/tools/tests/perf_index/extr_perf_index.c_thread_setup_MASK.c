#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long long length; long long num_threads; int /*<<< orphan*/  test_argv; int /*<<< orphan*/  test_argc; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* execute ) (int,int,long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_2__ args ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int ready_thread_count ; 
 int /*<<< orphan*/  ready_thread_count_lock ; 
 int /*<<< orphan*/  start_cvar ; 
 int /*<<< orphan*/  FUNC4 (int,int,long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ test ; 
 int /*<<< orphan*/  threads_ready_cvar ; 

__attribute__((used)) static void* FUNC5(void *arg) {
  int my_index = (int)arg;
  long long work_size = args.length / args.num_threads;
  int work_remainder = args.length % args.num_threads;

  if(work_remainder > my_index) {
    work_size++;
  }

  FUNC2(&ready_thread_count_lock);
  ready_thread_count++;
  if(ready_thread_count == args.num_threads)
    FUNC0(&threads_ready_cvar);
  FUNC1(&start_cvar, &ready_thread_count_lock);
  FUNC3(&ready_thread_count_lock);
  test.execute(my_index, args.num_threads, work_size, args.test_argc, args.test_argv);
  return NULL;
}