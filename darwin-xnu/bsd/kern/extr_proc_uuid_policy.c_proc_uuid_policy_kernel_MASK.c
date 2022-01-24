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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int EINVAL ; 
#define  PROC_UUID_POLICY_OPERATION_ADD 130 
#define  PROC_UUID_POLICY_OPERATION_CLEAR 129 
#define  PROC_UUID_POLICY_OPERATION_REMOVE 128 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(uint32_t operation, uuid_t uuid, uint32_t flags)
{
	int error = 0;
	
	switch (operation) {
		case PROC_UUID_POLICY_OPERATION_CLEAR:
			error = FUNC0(flags);
			break;
			
		case PROC_UUID_POLICY_OPERATION_ADD:
			error = FUNC1(uuid, flags);
			break;
			
		case PROC_UUID_POLICY_OPERATION_REMOVE:
			error = FUNC2(uuid, flags);
			break;
			
		default:
			error = EINVAL;
			break;
	}
	
	return error;
}