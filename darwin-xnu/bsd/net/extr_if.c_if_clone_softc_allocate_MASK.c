#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct if_clone {int /*<<< orphan*/  ifc_softc_size; int /*<<< orphan*/  ifc_zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

void *
FUNC3(const struct if_clone *ifc)
{
	void *p_clone = NULL;

	FUNC0(ifc != NULL);

	p_clone = FUNC2(ifc->ifc_zone);
	if (p_clone != NULL)
		FUNC1(p_clone, ifc->ifc_softc_size);

	return (p_clone);
}