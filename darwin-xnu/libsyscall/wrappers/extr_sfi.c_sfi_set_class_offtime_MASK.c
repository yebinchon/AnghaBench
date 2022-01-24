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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sfi_class_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  SFI_CTL_OPERATION_SET_CLASS_OFFTIME ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(sfi_class_id_t class_id, uint64_t offtime_usec)
{
	return FUNC0(SFI_CTL_OPERATION_SET_CLASS_OFFTIME, class_id, offtime_usec, NULL);
}