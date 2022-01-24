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
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  K ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 

K *FUNC3(PACK *p, char *name)
{
	K *k;
	BUF *b;
	// Validate arguments
	if (p == NULL || name == NULL)
	{
		return NULL;
	}

	b = FUNC2(p, name);
	if (b == NULL)
	{
		return NULL;
	}

	k = FUNC0(b, true, false, NULL);

	if (k == NULL)
	{
		k = FUNC0(b, true, true, NULL);
	}

	FUNC1(b);

	return k;
}