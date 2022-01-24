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
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool FUNC3(char *src, UINT *ip, UINT *mask)
{
	IP ip2, mask2;
	// Validate arguments
	if (src == NULL)
	{
		return false;
	}

	if (FUNC2(src, &ip2, &mask2) == false)
	{
		return false;
	}

	if (FUNC1(&ip2) == false)
	{
		return false;
	}

	if (ip != NULL)
	{
		*ip = FUNC0(&ip2);
	}

	if (mask != NULL)
	{
		*mask = FUNC0(&mask2);
	}

	return true;
}