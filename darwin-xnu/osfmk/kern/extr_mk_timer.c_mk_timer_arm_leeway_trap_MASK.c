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
struct mk_timer_arm_leeway_trap_args {int /*<<< orphan*/  mk_timer_flags; int /*<<< orphan*/  mk_leeway; int /*<<< orphan*/  expire_time; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC1(struct mk_timer_arm_leeway_trap_args *args) {
	return FUNC0(args->name, args->expire_time, args->mk_leeway, args->mk_timer_flags);
}