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
typedef  int /*<<< orphan*/  csh ;
struct TYPE_3__ {char const* name; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* InstructionInfoTable ; 

const char *FUNC1(csh handle, unsigned int id)
{
#ifdef CAPSTONE_DIET
	return NULL;
#else
	if (id >= FUNC0(InstructionInfoTable)) {
		return NULL;
	}
	return InstructionInfoTable[id].name;
#endif
}