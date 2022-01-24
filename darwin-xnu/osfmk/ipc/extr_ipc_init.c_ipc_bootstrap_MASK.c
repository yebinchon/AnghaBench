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
struct ipc_space {int dummy; } ;
struct ipc_pset {int dummy; } ;
struct ipc_port {int dummy; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int IKM_SAVED_KMSG_SIZE ; 
 size_t IOT_PORT ; 
 size_t IOT_PORT_SET ; 
 scalar_t__ KERN_SUCCESS ; 
 int MACH_PORT_QLIMIT_DEFAULT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Z_CACHING_ENABLED ; 
 int /*<<< orphan*/  Z_CALLERACCT ; 
 int /*<<< orphan*/  Z_NOENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ipc_kmsg_zone ; 
 int /*<<< orphan*/  ipc_lck_attr ; 
 int /*<<< orphan*/  ipc_lck_grp ; 
 int /*<<< orphan*/  ipc_lck_grp_attr ; 
 int /*<<< orphan*/ * ipc_object_zones ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int ipc_port_max ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ ipc_port_timestamp_data ; 
 int ipc_pset_max ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipc_space_kernel ; 
 int ipc_space_max ; 
 int /*<<< orphan*/  ipc_space_reply ; 
 int /*<<< orphan*/  ipc_space_zone ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC16(void)
{
	kern_return_t kr;
	
	FUNC9(&ipc_lck_grp_attr);
	FUNC10(&ipc_lck_grp, "ipc", &ipc_lck_grp_attr);
	FUNC8(&ipc_lck_attr);
	
	FUNC4();

	ipc_port_timestamp_data = 0;

	/* all IPC zones should be exhaustible */

	ipc_space_zone = FUNC14(sizeof(struct ipc_space),
			       ipc_space_max * sizeof(struct ipc_space),
			       sizeof(struct ipc_space),
			       "ipc spaces");
	FUNC15(ipc_space_zone, Z_NOENCRYPT, TRUE);

	/*
	 * populate all port(set) zones
	 */
	ipc_object_zones[IOT_PORT] =
		FUNC14(sizeof(struct ipc_port),
		      ipc_port_max * sizeof(struct ipc_port),
		      sizeof(struct ipc_port),
		      "ipc ports");
	/* cant charge callers for port allocations (references passed) */
	FUNC15(ipc_object_zones[IOT_PORT], Z_CALLERACCT, FALSE);
	FUNC15(ipc_object_zones[IOT_PORT], Z_NOENCRYPT, TRUE);

	ipc_object_zones[IOT_PORT_SET] =
		FUNC14(sizeof(struct ipc_pset),
		      ipc_pset_max * sizeof(struct ipc_pset),
		      sizeof(struct ipc_pset),
		      "ipc port sets");
	FUNC15(ipc_object_zones[IOT_PORT_SET], Z_NOENCRYPT, TRUE);

	/*
	 * Create the basic ipc_kmsg_t zone (the one we also cache)
	 * elements at the processor-level to avoid the locking.
	 */
	ipc_kmsg_zone = FUNC14(IKM_SAVED_KMSG_SIZE,
			      ipc_port_max * MACH_PORT_QLIMIT_DEFAULT *
			      IKM_SAVED_KMSG_SIZE,
			      IKM_SAVED_KMSG_SIZE,
			      "ipc kmsgs");
	FUNC15(ipc_kmsg_zone, Z_CALLERACCT, FALSE);
	FUNC15(ipc_kmsg_zone, Z_CACHING_ENABLED, TRUE);

	/* create special spaces */

	kr = FUNC5(&ipc_space_kernel);
	FUNC0(kr == KERN_SUCCESS);


	kr = FUNC5(&ipc_space_reply);
	FUNC0(kr == KERN_SUCCESS);

	/* initialize modules with hidden data structures */

#if	MACH_ASSERT
	ipc_port_debug_init();
#endif
	FUNC11();
	FUNC6();
	FUNC7();

#if IMPORTANCE_INHERITANCE
	ipc_importance_init();
#endif

	FUNC13();
	FUNC12();
	FUNC1();
}