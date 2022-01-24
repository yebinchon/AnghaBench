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
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  FARM_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

void FUNC5(SERVER *s, FARM_MEMBER *f, char *hubname, UINT key)
{
	PACK *p;
	// Validate arguments
	if (s == NULL || f == NULL || hubname == NULL)
	{
		return;
	}

	p = FUNC1();
	FUNC3(p, "HubName", hubname);
	FUNC2(p, "Key", key);

	p = FUNC4(f, p, "deletemactable");

	FUNC0(p);
}