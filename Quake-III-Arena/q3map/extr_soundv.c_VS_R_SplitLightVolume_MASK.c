#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vsound_t ;
typedef  int /*<<< orphan*/  plane_t ;
struct TYPE_7__ {scalar_t__ surfaceNum; scalar_t__ numtransFacets; int /*<<< orphan*/  transSurfaces; int /*<<< orphan*/  transFacets; int /*<<< orphan*/  farplane; int /*<<< orphan*/  cluster; int /*<<< orphan*/  type; int /*<<< orphan*/  facetNum; int /*<<< orphan*/  endplane; scalar_t__ num; int /*<<< orphan*/  facetTested; int /*<<< orphan*/  clusterTested; } ;
typedef  TYPE_1__ lightvolume_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  numvolumes ; 

int FUNC4(vsound_t *light, lightvolume_t *volume, plane_t *split, int cluster, int firstportal)
{
	lightvolume_t back;
	int res;

	//
	res = FUNC2(volume, &back, split, 0.1);
	// if the volume was split
	if (res == 2)
	{
		FUNC3(back.clusterTested, volume->clusterTested, sizeof(back.clusterTested));
		FUNC3(back.facetTested, volume->facetTested, sizeof(back.facetTested));
		back.num = numvolumes++;
		back.endplane = volume->endplane;
		back.surfaceNum = volume->surfaceNum;
		back.facetNum = volume->facetNum;
		back.type = volume->type;
		back.cluster = volume->cluster;
		back.farplane = volume->farplane;
		if (volume->numtransFacets > 0)
		{
			FUNC3(back.transFacets, volume->transFacets, sizeof(back.transFacets));
			FUNC3(back.transSurfaces, volume->transSurfaces, sizeof(back.transSurfaces));
		}
		back.numtransFacets = volume->numtransFacets;
		//
		// flood the volume at the back of the split plane
		FUNC1(light, &back, cluster, firstportal);
		// if the back volume hit a surface
		if (back.surfaceNum >= 0)
		{
			FUNC0(light, &back);
		}
	}
	return res;
}