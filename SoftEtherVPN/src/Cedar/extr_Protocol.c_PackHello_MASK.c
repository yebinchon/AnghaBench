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
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 

PACK *FUNC4(void *random, UINT ver, UINT build, char *server_str)
{
	PACK *p;
	// Validate arguments
	if (random == NULL || server_str == NULL)
	{
		return NULL;
	}

	p = FUNC0();
	FUNC3(p, "hello", server_str);
	FUNC2(p, "version", ver);
	FUNC2(p, "build", build);
	FUNC1(p, "random", random, SHA1_SIZE);

	return p;
}