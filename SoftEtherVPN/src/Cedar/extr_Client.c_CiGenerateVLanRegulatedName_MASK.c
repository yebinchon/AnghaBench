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
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 

void FUNC2(char *name, UINT size, UINT i)
{
	// Validate arguments
	if (name == NULL)
	{
		return;
	}

	if (i == 1)
	{
		FUNC1(name, size, "VPN");
	}
	else
	{
		FUNC0(name, size, "VPN%u", i);
	}
}