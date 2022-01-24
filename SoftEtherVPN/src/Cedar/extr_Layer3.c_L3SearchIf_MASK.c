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
typedef  int /*<<< orphan*/  t ;
struct TYPE_9__ {int /*<<< orphan*/  HubName; } ;
struct TYPE_8__ {int /*<<< orphan*/  IfList; } ;
typedef  TYPE_1__ L3SW ;
typedef  TYPE_2__ L3IF ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 

L3IF *FUNC3(L3SW *s, char *hubname)
{
	L3IF t, *f;
	// Validate arguments
	if (s == NULL || hubname == NULL)
	{
		return NULL;
	}

	FUNC2(&t, sizeof(t));
	FUNC1(t.HubName, sizeof(t.HubName), hubname);

	f = FUNC0(s->IfList, &t);

	return f;
}