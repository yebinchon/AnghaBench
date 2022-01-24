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
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ SHA1_SIZE ; 

bool FUNC4(PACK *p, void *random, UINT *ver, UINT *build, char *server_str, UINT server_str_size)
{
	// Validate arguments
	if (p == NULL || random == NULL || ver == NULL || server_str == NULL)
	{
		return false;
	}

	if (FUNC3(p, "hello", server_str, server_str_size) == false)
	{
		return false;
	}
	*ver = FUNC2(p, "version");
	*build = FUNC2(p, "build");
	if (FUNC1(p, "random") != SHA1_SIZE)
	{
		return false;
	}
	if (FUNC0(p, "random", random) == false)
	{
		return false;
	}

	return true;
}