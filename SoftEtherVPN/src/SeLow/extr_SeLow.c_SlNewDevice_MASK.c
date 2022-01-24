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
typedef  int /*<<< orphan*/  SL_UNICODE ;
typedef  int /*<<< orphan*/  SL_DEVICE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 

SL_DEVICE *FUNC3(char *device_name, char *symbolic_link_name)
{
	SL_UNICODE *u_device_name = FUNC2(device_name);
	SL_UNICODE *u_sym_name = FUNC2(symbolic_link_name);

	SL_DEVICE *ret = FUNC1(u_device_name, u_sym_name);

	if (ret == NULL)
	{
		FUNC0(u_device_name);
		FUNC0(u_sym_name);
	}

	return ret;
}