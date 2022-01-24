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
struct rtentry {int rt_flags; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {int sa_family; } ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int RTF_CONDEMNED ; 
 int RTF_UP ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct rtentry*) ; 

boolean_t
FUNC5(struct rtentry *rt)
{
	FUNC1(rt);

	if ((rt->rt_flags & (RTF_UP | RTF_CONDEMNED)) == RTF_UP) {
		int af = FUNC4(rt)->sa_family;

		if (af == AF_INET)
			(void) FUNC3(FUNC0(rt));
		else if (af == AF_INET6)
			(void) FUNC2(FUNC0(rt));
	} else {
		rt = NULL;
	}

	return (rt != NULL);
}