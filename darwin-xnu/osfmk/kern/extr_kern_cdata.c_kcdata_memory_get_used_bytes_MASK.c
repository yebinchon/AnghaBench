#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct kcdata_item {int dummy; } ;
typedef  TYPE_1__* kcdata_descriptor_t ;
struct TYPE_3__ {scalar_t__ kcd_addr_begin; scalar_t__ kcd_addr_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

uint64_t FUNC1(kcdata_descriptor_t kcd)
{
	FUNC0(kcd != NULL);
	return ((uint64_t)kcd->kcd_addr_end - (uint64_t)kcd->kcd_addr_begin) + sizeof(struct kcdata_item);
}