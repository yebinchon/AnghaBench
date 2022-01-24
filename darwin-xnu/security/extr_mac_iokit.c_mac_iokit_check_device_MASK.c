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
struct mac_module_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct mac_module_data*) ; 
 int /*<<< orphan*/  iokit_check_device ; 

int
FUNC1(char *devtype, struct mac_module_data *mdata)
{
	int error;

	FUNC0(iokit_check_device, devtype, mdata);
	return (error);
}