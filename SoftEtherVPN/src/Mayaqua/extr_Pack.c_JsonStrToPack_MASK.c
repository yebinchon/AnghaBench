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
typedef  int /*<<< orphan*/  JSON_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 

PACK *FUNC3(char *str)
{
	JSON_VALUE *v = FUNC2(str);
	PACK *ret;

	if (v == NULL)
	{
		return NULL;
	}

	ret = FUNC1(v);

	FUNC0(v);

	return ret;
}