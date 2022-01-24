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
struct sockaddr {int dummy; } ;
struct ifaddr {int dummy; } ;

/* Variables and functions */
 struct ifaddr* FUNC0 (int,struct sockaddr const*,struct sockaddr const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rnh_lock ; 

struct ifaddr *
FUNC3(
	int flags,
	const struct sockaddr	*dst,
	const struct sockaddr *gateway)
{
	struct ifaddr *ifa;

	FUNC1(rnh_lock);
	ifa = FUNC0(flags, dst, gateway);
	FUNC2(rnh_lock);

	return (ifa);
}