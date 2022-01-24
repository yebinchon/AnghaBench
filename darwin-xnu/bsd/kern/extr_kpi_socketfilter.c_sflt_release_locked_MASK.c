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
struct TYPE_2__ {int /*<<< orphan*/  sf_handle; int /*<<< orphan*/  (* sf_unregistered ) (int /*<<< orphan*/ ) ;} ;
struct socket_filter {scalar_t__ sf_refcount; TYPE_1__ sf_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IFADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sock_filter_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct socket_filter *filter)
{
	filter->sf_refcount--;
	if (filter->sf_refcount == 0) {
		/* Call the unregistered function */
		if (filter->sf_filter.sf_unregistered) {
			FUNC2(sock_filter_lock);
			filter->sf_filter.sf_unregistered(
			    filter->sf_filter.sf_handle);
			FUNC1(sock_filter_lock);
		}

		/* Free the entry */
		FUNC0(filter, M_IFADDR);
	}
}