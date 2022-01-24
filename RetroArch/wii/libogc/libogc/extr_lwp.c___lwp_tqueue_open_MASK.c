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
typedef  int /*<<< orphan*/  tqueue_st ;
typedef  int /*<<< orphan*/  lwpq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _lwp_tqueue_objects ; 

__attribute__((used)) static __inline__ tqueue_st* FUNC3(lwpq_t tqueue)
{
	FUNC0(tqueue);
	return (tqueue_st*)FUNC2(&_lwp_tqueue_objects,FUNC1(tqueue));
}