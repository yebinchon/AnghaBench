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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int EBUSY ; 
 int HOST_REBOOT_HALT ; 
 int HOST_REBOOT_UPSDELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int RB_HALT ; 
 int RB_NOSYNC ; 
 int RB_PANIC ; 
 int RB_POWERDOWN ; 
 int RB_QUICK ; 
 int RB_UPSDELAY ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  kIOSystemShutdownNotificationStageProcessExit ; 
 int /*<<< orphan*/  kIOSystemShutdownNotificationStageRootUnmount ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ kdebug_enable ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,void*,int*) ; 
 int /*<<< orphan*/  system_inshutdown ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 

int
FUNC18(int howto, char *message)
{
	int hostboot_option=0;
	uint64_t startTime;

	if ((howto & (RB_PANIC | RB_QUICK)) == (RB_PANIC | RB_QUICK)) {
		FUNC12(howto, message);
	}

	if (!FUNC1(0, 1, &system_inshutdown)) {
		if ( (howto&RB_QUICK) == RB_QUICK)
			goto force_reboot;
		return (EBUSY);
	}
	/*
	 * Notify the power management root domain that the system will shut down.
	 */
	FUNC0(kIOSystemShutdownNotificationStageProcessExit);

	if ((howto&RB_QUICK)==RB_QUICK) {
		FUNC13("Quick reboot...\n");
		if ((howto&RB_NOSYNC)==0) {
			FUNC15((proc_t)NULL, (void *)NULL, (int *)NULL);
		}
	}
	else if ((howto&RB_NOSYNC)==0) {
		int iter, nbusy;

		FUNC13("syncing disks... ");

		/*
		 * Release vnodes held by texts before sync.
		 */

		/* handle live procs (deallocate their root and current directories), suspend initproc */

		startTime = FUNC11();
		FUNC14();
		FUNC5("proc_shutdown", 0, FUNC11() - startTime);

#if CONFIG_AUDIT
		startTime = mach_absolute_time();
		audit_shutdown();
		halt_log_enter("audit_shutdown", 0, mach_absolute_time() - startTime);
#endif

		if (&unmountroot_pre_hook != NULL)
			FUNC16();

		startTime = FUNC11();
		FUNC15((proc_t)NULL, (void *)NULL, (int *)NULL);

		if (kdebug_enable) {
			startTime = FUNC11();
			FUNC9("/var/log/shutdown/shutdown.trace");
			FUNC5("shutdown.trace", 0, FUNC11() - startTime);
		}

		FUNC0(kIOSystemShutdownNotificationStageRootUnmount);

		/*
		 * Unmount filesystems
		 */

#if DEVELOPMENT || DEBUG
		if (!(howto & RB_PANIC) || !kdp_has_polled_corefile())
#endif /* DEVELOPMENT || DEBUG */
		{
			startTime = FUNC11();
			FUNC17();
			FUNC5("vfs_unmountall", 0, FUNC11() - startTime);
		}

		/* Wait for the buffer cache to clean remaining dirty buffers */
		startTime = FUNC11();
		for (iter = 0; iter < 100; iter++) {
			nbusy = FUNC3();
			if (nbusy == 0)
				break;
			FUNC13("%d ", nbusy);
			FUNC4( 1 * nbusy, 1000 * 1000);
		}
		if (nbusy)
			FUNC13("giving up\n");
		else
			FUNC13("done\n");
		FUNC5("bufferclean", 0, FUNC11() - startTime);
	}
#if NETWORKING
	/*
	 * Can't just use an splnet() here to disable the network
	 * because that will lock out softints which the disk
	 * drivers depend on to finish DMAs.
	 */
	startTime = mach_absolute_time();
	if_down_all();
	halt_log_enter("if_down_all", 0, mach_absolute_time() - startTime);
#endif /* NETWORKING */

force_reboot:

	if (howto & RB_PANIC) {
		FUNC12(howto, message);
	}

	if (howto & RB_POWERDOWN)
		hostboot_option = HOST_REBOOT_HALT;
	if (howto & RB_HALT)
		hostboot_option = HOST_REBOOT_HALT;

	if (howto & RB_UPSDELAY) {
		hostboot_option = HOST_REBOOT_UPSDELAY;
	}

	FUNC7(FUNC6(), hostboot_option);
	/*
	 * should not be reached
	 */
	return (0);
}