#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* FreePhys; void* UsedPhys; void* TotalPhys; void* FreeMemory; void* UsedMemory; void* TotalMemory; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ MEMINFO ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

void FUNC2(MEMINFO *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC1(t, sizeof(MEMINFO));
	t->TotalMemory = FUNC0(p, "TotalMemory");
	t->UsedMemory = FUNC0(p, "UsedMemory");
	t->FreeMemory = FUNC0(p, "FreeMemory");
	t->TotalPhys = FUNC0(p, "TotalPhys");
	t->UsedPhys = FUNC0(p, "UsedPhys");
	t->FreePhys = FUNC0(p, "FreePhys");
}