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
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  TURNSTILE_MULTIHOP_SERVICE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bootstrap_port ; 

__attribute__((used)) static mach_port_t
FUNC2(void)
{
	mach_port_t port;
	kern_return_t kr = FUNC1(bootstrap_port,
			TURNSTILE_MULTIHOP_SERVICE_NAME, &port);
	T_QUIET; FUNC0(kr, "server bootstrap_check_in");
	return port;
}