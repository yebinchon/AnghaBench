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
 struct ifaddr* FUNC0 (struct sockaddr const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

struct ifaddr *
FUNC3(const struct sockaddr *addr, unsigned int ifscope)
{
	struct ifaddr *result = NULL;

	FUNC2();

	result = FUNC0(addr, ifscope);

	FUNC1();

	return (result);
}