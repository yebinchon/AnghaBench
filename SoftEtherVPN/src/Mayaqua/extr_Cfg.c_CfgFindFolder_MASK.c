#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  Folders; } ;
typedef  TYPE_1__ FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

FOLDER *FUNC5(FOLDER *parent, char *name)
{
	FOLDER *f, ff;
	// Validate arguments
	if (parent == NULL || name == NULL)
	{
		return NULL;
	}

	ff.Name = FUNC4(FUNC3(name) + 1);
	FUNC2(ff.Name, 0, name);
	f = FUNC1(parent->Folders, &ff);
	FUNC0(ff.Name);

	return f;
}