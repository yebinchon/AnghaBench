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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 

void FUNC2(SERVER *s, char *name, UINT size)
{
	char *cpu;
	// Validate arguments
	if (s == NULL || name == NULL)
	{
		return;
	}

	FUNC0(s, name, size);

#ifdef	CPU_64
	cpu = " (64 bit)";
#else	// CPU_64
	cpu = " (32 bit)";
#endif	// CPU_64

	FUNC1(name, size, cpu);

	FUNC1(name, size, " (Open Source)");
}