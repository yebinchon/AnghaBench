#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ DeviceTreeNodeProperty ;

/* Variables and functions */
 scalar_t__ FUNC0 (uintptr_t,int /*<<< orphan*/ ,int,uintptr_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline DeviceTreeNodeProperty*
FUNC2(DeviceTreeNodeProperty* prop)
{
	uintptr_t next_addr;
	if (FUNC0((uintptr_t)prop, prop->length, sizeof(DeviceTreeNodeProperty) + 3, &next_addr))
		FUNC1("Device tree property overflow: prop %p, length 0x%x\n", prop, prop->length);
	next_addr &= ~(3ULL);
	return (DeviceTreeNodeProperty*)next_addr;
}