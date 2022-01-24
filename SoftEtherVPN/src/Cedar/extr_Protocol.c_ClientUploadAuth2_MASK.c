#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* Session; } ;
struct TYPE_5__ {int /*<<< orphan*/  SessionKey; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(CONNECTION *c, SOCK *s)
{
	PACK *p = NULL;
	// Validate arguments
	if (c == NULL)
	{
		return false;
	}

	p = FUNC3(c->Session->SessionKey);

	FUNC2(p, c);

	if (FUNC1(s, p) == false)
	{
		FUNC0(p);
		return false;
	}
	FUNC0(p);

	return true;
}