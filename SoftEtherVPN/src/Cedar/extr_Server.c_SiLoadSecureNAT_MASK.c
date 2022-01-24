#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VH_OPTION ;
struct TYPE_4__ {int /*<<< orphan*/  SecureNATOption; } ;
typedef  TYPE_1__ HUB ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(HUB *h, FOLDER *f)
{
	VH_OPTION o;
	// Validate arguments
	if (h == NULL || f == NULL)
	{
		return;
	}

	// Read the VH_OPTION
	FUNC3(&o, f);

	// Set the VH_OPTION
	FUNC1(h->SecureNATOption, &o, sizeof(VH_OPTION));

	FUNC2(h, FUNC0(f, "Disabled") ? false : true);
}