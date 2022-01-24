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
struct TYPE_3__ {int /*<<< orphan*/  InternetSetting; } ;
typedef  int /*<<< orphan*/  INTERNET_SETTING ;
typedef  TYPE_1__ DDNS_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC1(DDNS_CLIENT *c, INTERNET_SETTING *t)
{
	// Validate arguments
	if (c == NULL || t == NULL)
	{
		return;
	}

	FUNC0(&c->InternetSetting, t, sizeof(INTERNET_SETTING));
}