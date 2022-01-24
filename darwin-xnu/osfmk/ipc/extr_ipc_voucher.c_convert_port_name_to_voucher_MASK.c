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
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_voucher_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  IV_NULL ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

ipc_voucher_t
FUNC5(
	mach_port_name_t	voucher_name)
{
	ipc_voucher_t iv;
	kern_return_t kr;
	ipc_port_t port;

	if (FUNC0(voucher_name)) {
		kr = FUNC4(FUNC2(), voucher_name, &port);
		if (KERN_SUCCESS != kr)
			return IV_NULL;

		iv = FUNC1(port);
		FUNC3(port);
		return iv;
	}
	return IV_NULL;
}