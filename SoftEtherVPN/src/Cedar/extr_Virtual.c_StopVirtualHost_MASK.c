#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* Session; } ;
typedef  TYPE_1__ VH ;
struct TYPE_9__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_2__ SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(VH *v)
{
	SESSION *s;
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	// Get the session corresponding to the virtual host
	FUNC1(v);
	{
		s = v->Session;
		if (s != NULL)
		{
			FUNC0(s->ref);
		}
	}
	FUNC4(v);

	if (s == NULL)
	{
		// This session is already stopped
		return;
	}

	// Stop Session
	FUNC3(s);

	FUNC2(s);
}