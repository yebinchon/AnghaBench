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
typedef  int /*<<< orphan*/  winding_t ;
struct TYPE_4__ {int /*<<< orphan*/  normal; } ;
struct TYPE_5__ {int numpoints; TYPE_1__ plane; int /*<<< orphan*/ * boundaries; } ;
typedef  TYPE_2__ lFacet_t ;

/* Variables and functions */
 scalar_t__ SIDE_BACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 float FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ nostitching ; 

float FUNC3(winding_t *w, lFacet_t *facet)
{
	int i;

	for (i = 0; i < facet->numpoints; i++)
	{
		if (FUNC0(w, &facet->boundaries[i], 0) == SIDE_BACK)
			return 0;
	}
	if (nostitching)
		return FUNC2(w);
	else
		return FUNC1(w, facet->plane.normal);
}