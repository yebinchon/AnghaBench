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
struct waitq_set {int dummy; } ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct waitq_set*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct waitq_set*) ; 
 int /*<<< orphan*/  waitq_set_zone ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct waitq_set*) ; 

kern_return_t FUNC3(struct waitq_set *wqset)
{
	FUNC1(wqset);

	FUNC0(wqset, 0, sizeof(*wqset));
	FUNC2(waitq_set_zone, wqset);

	return KERN_SUCCESS;
}