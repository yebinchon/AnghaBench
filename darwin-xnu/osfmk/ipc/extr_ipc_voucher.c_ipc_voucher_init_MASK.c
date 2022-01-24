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
struct ipc_voucher_attr_control {int dummy; } ;
struct ipc_voucher {int dummy; } ;
typedef  int natural_t ;
typedef  size_t iv_index_t ;

/* Variables and functions */
 size_t IV_HASH_BUCKETS ; 
 int MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Z_NOENCRYPT ; 
 int /*<<< orphan*/  ipc_voucher_attr_control_zone ; 
 int /*<<< orphan*/  ipc_voucher_zone ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * ivht_bucket ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int task_max ; 
 int thread_max ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(void)
{
	natural_t ipc_voucher_max = (task_max + thread_max) * 2;
	natural_t attr_manager_max = MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN;
	iv_index_t i;

	ipc_voucher_zone = FUNC4(sizeof(struct ipc_voucher),
				 ipc_voucher_max * sizeof(struct ipc_voucher),
				 sizeof(struct ipc_voucher),
				 "ipc vouchers");
	FUNC5(ipc_voucher_zone, Z_NOENCRYPT, TRUE);

	ipc_voucher_attr_control_zone = FUNC4(sizeof(struct ipc_voucher_attr_control),
				 attr_manager_max * sizeof(struct ipc_voucher_attr_control),
				 sizeof(struct ipc_voucher_attr_control),
				 "ipc voucher attr controls");
	FUNC5(ipc_voucher_attr_control_zone, Z_NOENCRYPT, TRUE);

	/* initialize voucher hash */
	FUNC1();
	for (i = 0; i < IV_HASH_BUCKETS; i++)
		FUNC2(&ivht_bucket[i]);

	/* initialize global table locking */
	FUNC0();

#if defined(MACH_VOUCHER_ATTR_KEY_USER_DATA) || defined(MACH_VOUCHER_ATTR_KEY_TEST)
	user_data_attr_manager_init();
#endif
}