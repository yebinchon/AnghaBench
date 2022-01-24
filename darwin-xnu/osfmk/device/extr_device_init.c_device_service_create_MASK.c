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
typedef  int /*<<< orphan*/  ipc_kobject_t ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_IO_MASTER_PORT ; 
 int /*<<< orphan*/  IKOT_MASTER_DEVICE ; 
 scalar_t__ IP_NULL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dev_lck_attr ; 
 int /*<<< orphan*/  dev_lck_grp ; 
 int /*<<< orphan*/  dev_lck_grp_attr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  io_done_thread ; 
 int /*<<< orphan*/  iokit_obj_to_port_binding_lock ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_task ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  master_device_kobject ; 
 scalar_t__ master_device_port ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  net_thread ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

void
FUNC15(void)
{
	master_device_port = FUNC5();
	if (master_device_port == IP_NULL)
	    FUNC14("can't allocate master device port");

	FUNC4(master_device_port, (ipc_kobject_t)&master_device_kobject, IKOT_MASTER_DEVICE);
	FUNC7(FUNC3(), HOST_IO_MASTER_PORT,
				FUNC6(master_device_port));

	/* allocate device lock group attribute and group */
	dev_lck_grp_attr= FUNC11();
	dev_lck_grp = FUNC10("device",  dev_lck_grp_attr);

	/* Allocate device lock attribute */
	dev_lck_attr = FUNC9();

	/* Initialize the IOKit object to port binding lock */
	FUNC12(&iokit_obj_to_port_binding_lock, dev_lck_grp, dev_lck_attr);

#if 0
	ds_init();
	net_io_init();
	device_pager_init();
	datadev_init();

	(void) kernel_thread(kernel_task, io_done_thread, (char *)0);
	(void) kernel_thread(kernel_task, net_thread, (char *)0);
#endif
}