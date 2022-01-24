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
typedef  int /*<<< orphan*/  hostname ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(THREAD *t, void *p)
{
	IP *ip;
	char hostname[256];
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	ip = (IP *)p;

	FUNC1(t);

	FUNC5(t);

	if (FUNC4(hostname, sizeof(hostname), ip))
	{
		FUNC0(ip, hostname);
	}

	FUNC3(ip);

	FUNC2(t);
}