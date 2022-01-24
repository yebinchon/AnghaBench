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
typedef  int /*<<< orphan*/  thread_t ;
struct task_pend_token {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct task_pend_token*) ; 

void
FUNC4(thread_t   thread,
                       int        category,
                       int        flavor,
                       int        value)
{
	struct task_pend_token pend_token = {};

	FUNC1(thread);

	FUNC0(thread, category, flavor, value, 0, &pend_token);

	FUNC2(thread);

	FUNC3(thread, &pend_token);
}