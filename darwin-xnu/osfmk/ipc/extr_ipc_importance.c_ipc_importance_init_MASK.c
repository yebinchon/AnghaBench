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
typedef  int /*<<< orphan*/  temp_buf ;
struct ipc_importance_task {int dummy; } ;
struct ipc_importance_inherit {int dummy; } ;
typedef  int natural_t ;
typedef  int /*<<< orphan*/  mach_voucher_attr_value_handle_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_VOUCHER_ATTR_KEY_IMPORTANCE ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Z_NOENCRYPT ; 
 int /*<<< orphan*/  global_iit_alloc_queue ; 
 int /*<<< orphan*/  ipc_importance_control ; 
 int /*<<< orphan*/  ipc_importance_inherit_zone ; 
 int /*<<< orphan*/  ipc_importance_interactive_receiver ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ipc_importance_manager ; 
 int /*<<< orphan*/  ipc_importance_task_zone ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int task_max ; 
 int thread_max ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(void)
{
	natural_t ipc_importance_max = (task_max + thread_max) * 2;
	char temp_buf[26];
	kern_return_t kr;

	if (FUNC0("imp_interactive_receiver", temp_buf, sizeof(temp_buf))) {
		ipc_importance_interactive_receiver = TRUE;
	}

	ipc_importance_task_zone = FUNC5(sizeof(struct ipc_importance_task),
					 ipc_importance_max * sizeof(struct ipc_importance_task),
					 sizeof(struct ipc_importance_task),
					 "ipc task importance");
	FUNC6(ipc_importance_task_zone, Z_NOENCRYPT, TRUE);

	ipc_importance_inherit_zone = FUNC5(sizeof(struct ipc_importance_inherit),
					    ipc_importance_max * sizeof(struct ipc_importance_inherit),
					    sizeof(struct ipc_importance_inherit),
					    "ipc importance inherit");
	FUNC6(ipc_importance_inherit_zone, Z_NOENCRYPT, TRUE);


#if DEVELOPMENT || DEBUG 
	queue_init(&global_iit_alloc_queue);
#endif

	/* initialize global locking */
	FUNC1();

	kr = FUNC2(&ipc_importance_manager,
						(mach_voucher_attr_value_handle_t)0,
						MACH_VOUCHER_ATTR_KEY_IMPORTANCE,
						&ipc_importance_control);
	if (KERN_SUCCESS != kr)
		FUNC3("Voucher importance manager register returned %d", kr);
}