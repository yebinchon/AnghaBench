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
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  _node ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _queue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

s32 FUNC2(void)
{
	s32 res;
	_node *n;

	res = 0;
	while (true) {
		n = (_node *) FUNC0(&_queue);

		if (!n)
			break;

		FUNC1(n);
		res++;
	}

	return res;
}