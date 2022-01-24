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
typedef  scalar_t__ uint32_t ;
struct __argv {int dummy; } ;
typedef  int /*<<< orphan*/  (* entrypoint ) () ;
struct TYPE_3__ {scalar_t__ argvMagic; } ;

/* Variables and functions */
 scalar_t__ ARGV_MAGIC ; 
 scalar_t__ EXECUTABLE_MEM_ADDR ; 
 TYPE_1__* SYSTEM_ARGV ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int FUNC4 (void*) ; 

void FUNC5(void)
{
	entrypoint exeEntryPoint;
	uint32_t exeEntryPointAddress = 0;
	void *exeBuffer = (void*)EXECUTABLE_MEM_ADDR;

	if (FUNC4(exeBuffer) == 1)
		exeEntryPointAddress = FUNC1(exeBuffer);
	else
		exeEntryPointAddress = FUNC0(exeBuffer);

	exeEntryPoint = (entrypoint) exeEntryPointAddress;

	if (!exeEntryPoint)
		return;

	if (SYSTEM_ARGV->argvMagic == ARGV_MAGIC)
	{
		void *new_argv = (void*)(exeEntryPointAddress + 8);
		FUNC2(new_argv, SYSTEM_ARGV, sizeof(struct __argv));
		FUNC3(new_argv, sizeof(struct __argv));
	}

	exeEntryPoint();
}