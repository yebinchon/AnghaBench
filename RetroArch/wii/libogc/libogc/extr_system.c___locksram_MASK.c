#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int locked; scalar_t__ srambuf; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__ sramcntrl ; 

__attribute__((used)) static void* FUNC2(u32 loc)
{
	u32 level;

	FUNC0(level);
	if(!sramcntrl.locked) {
		sramcntrl.enabled = level;
		sramcntrl.locked = 1;
		return (void*)((u32)sramcntrl.srambuf+loc);
	}
	FUNC1(level);
	return NULL;
}