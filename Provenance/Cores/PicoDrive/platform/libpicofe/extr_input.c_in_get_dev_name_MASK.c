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
struct TYPE_3__ {char* name; int /*<<< orphan*/  probed; } ;
typedef  TYPE_1__ in_dev_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 char* FUNC1 (char const*,char) ; 

const char *FUNC2(int dev_id, int must_be_active, int skip_pfix)
{
	const char *name, *tmp;
	in_dev_t *dev;

	dev = FUNC0(dev_id);
	if (dev == NULL)
		return NULL;

	if (must_be_active && !dev->probed)
		return NULL;

	name = dev->name;
	if (name == NULL || !skip_pfix)
		return name;

	/* skip prefix */
	tmp = FUNC1(name, ':');
	if (tmp != NULL)
		name = tmp + 1;

	return name;
}