#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num_dict; TYPE_1__* dict; } ;
typedef  TYPE_2__ ccd_struct ;
struct TYPE_4__ {int /*<<< orphan*/  value; int /*<<< orphan*/  name; int /*<<< orphan*/  section; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(ccd_struct *ccd, char *section, char *name)
{
	int i;
	for (i = 0; i < ccd->num_dict; i++)
	{
		if (FUNC0(ccd->dict[i].section, section) == 0 &&
			 FUNC0(ccd->dict[i].name, name) == 0)
			return FUNC1(ccd->dict[i].value, NULL, 0);
	}

	return -1;
}