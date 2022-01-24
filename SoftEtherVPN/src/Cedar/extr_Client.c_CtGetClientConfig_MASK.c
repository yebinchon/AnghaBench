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
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  Config; } ;
typedef  int /*<<< orphan*/  CLIENT_CONFIG ;
typedef  TYPE_1__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(CLIENT *c, CLIENT_CONFIG *o)
{
	// Validate arguments
	if (c == NULL || o == NULL)
	{
		return false;
	}

	FUNC1(c->lock);
	{
		FUNC0(o, &c->Config, sizeof(CLIENT_CONFIG));
	}
	FUNC2(c->lock);

	return true;
}