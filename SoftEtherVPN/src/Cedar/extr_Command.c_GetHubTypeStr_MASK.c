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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ; 
 scalar_t__ HUB_TYPE_FARM_STATIC ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 

wchar_t *FUNC1(UINT type)
{
	if (type == HUB_TYPE_FARM_STATIC)
	{
		return FUNC0("SM_HUB_STATIC");
	}
	else if (type == HUB_TYPE_FARM_DYNAMIC)
	{
		return FUNC0("SM_HUB_DYNAMIC");
	}
	return FUNC0("SM_HUB_STANDALONE");
}