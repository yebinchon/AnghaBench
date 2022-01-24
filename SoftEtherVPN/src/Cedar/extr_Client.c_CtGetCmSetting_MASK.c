#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  CmSetting; } ;
typedef  int /*<<< orphan*/  CM_SETTING ;
typedef  TYPE_1__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

bool FUNC1(CLIENT *c, CM_SETTING *s)
{
	// Validate arguments
	if (c == NULL || s == NULL)
	{
		return false;
	}

	FUNC0(s, c->CmSetting, sizeof(CM_SETTING));
	
	return true;
}