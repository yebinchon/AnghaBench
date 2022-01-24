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

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FUNC0 (char const*,void*) ; 
 int FUNC1 (char const*,void*) ; 

int
FUNC2(int af, const char *src, void *dst)
{
	switch (af) {
	case AF_INET:
		return (FUNC0(src, dst));
	case AF_INET6:
		return (FUNC1(src, dst));
	default:
		return (-1);
	}
	/* NOTREACHED */
}