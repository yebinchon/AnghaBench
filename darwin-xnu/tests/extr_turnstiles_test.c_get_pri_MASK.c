#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  thread_info_t ;
struct TYPE_2__ {int pth_curpri; } ;
typedef  TYPE_1__ thread_extended_info_data_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_EXTENDED_INFO ; 
 int /*<<< orphan*/  THREAD_EXTENDED_INFO_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(thread_t thread_port) {
	kern_return_t kr;

	thread_extended_info_data_t extended_info;
	mach_msg_type_number_t count = THREAD_EXTENDED_INFO_COUNT;
	kr = FUNC1(thread_port, THREAD_EXTENDED_INFO,
	                   (thread_info_t)&extended_info, &count);

	T_QUIET; FUNC0(kr, "thread_info");
	return extended_info.pth_curpri;
}