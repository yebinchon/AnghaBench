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
struct ifaddr {int dummy; } ;

/* Variables and functions */
 scalar_t__ nd6_dad_timer ; 
 int /*<<< orphan*/  FUNC0 (void (*) (void*),void*) ; 

void
FUNC1(
	struct ifaddr *ifa)
{

	FUNC0((void (*)(void *))nd6_dad_timer, (void *)ifa);
}