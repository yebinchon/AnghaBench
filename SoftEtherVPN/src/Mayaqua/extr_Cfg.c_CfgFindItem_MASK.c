#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  Items; } ;
struct TYPE_7__ {int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ ITEM ;
typedef  TYPE_2__ FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

ITEM *FUNC5(FOLDER *parent, char *name)
{
	ITEM *t, tt;
	// Validate arguments
	if (parent == NULL || name == NULL)
	{
		return NULL;
	}

	tt.Name = FUNC4(FUNC3(name) + 1);
	FUNC2(tt.Name, 0, name);
	t = FUNC1(parent->Items, &tt);
	FUNC0(tt.Name);

	return t;
}