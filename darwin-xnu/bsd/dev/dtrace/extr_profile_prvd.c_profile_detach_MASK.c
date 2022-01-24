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
typedef  int /*<<< orphan*/  dev_info_t ;
typedef  int ddi_detach_cmd_t ;

/* Variables and functions */
#define  DDI_DETACH 129 
 int DDI_FAILURE ; 
 int DDI_SUCCESS ; 
#define  DDI_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  profile_id ; 

__attribute__((used)) static int
FUNC2(dev_info_t *devi, ddi_detach_cmd_t cmd)
{
	switch (cmd) {
	case DDI_DETACH:
		break;
	case DDI_SUSPEND:
		return (DDI_SUCCESS);
	default:
		return (DDI_FAILURE);
	}

	if (FUNC1(profile_id) != 0)
		return (DDI_FAILURE);

	FUNC0(devi, NULL);
	return (DDI_SUCCESS);
}