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
typedef  scalar_t__ net_thread_marks_t ;
typedef  scalar_t__ domain_unguard_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  domain_proto_mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ net_thread_marks_none ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void
FUNC3(domain_unguard_t unguard)
{
	net_thread_marks_t marks = (net_thread_marks_t)(const void*)unguard;

	if (marks != net_thread_marks_none) {
		FUNC0(&domain_proto_mtx, LCK_MTX_ASSERT_NOTOWNED);
		FUNC1(&domain_proto_mtx);
		FUNC2(marks);
	}
	else
		FUNC0(&domain_proto_mtx, LCK_MTX_ASSERT_OWNED);
}