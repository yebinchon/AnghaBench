#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int numpoints; int /*<<< orphan*/ * points; } ;
typedef  TYPE_3__ winding_t ;
struct TYPE_17__ {scalar_t__ atten_disttype; float photons; int /*<<< orphan*/  normal; } ;
typedef  TYPE_4__ vsound_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_15__ {int /*<<< orphan*/  normal; void* dist; } ;
struct TYPE_18__ {int numplanes; int surfaceNum; int /*<<< orphan*/  cluster; int /*<<< orphan*/  type; TYPE_2__ endplane; TYPE_2__ farplane; int /*<<< orphan*/ * points; TYPE_1__* planes; } ;
typedef  TYPE_5__ lightvolume_t ;
struct TYPE_19__ {int /*<<< orphan*/  cluster; } ;
struct TYPE_14__ {int /*<<< orphan*/  normal; void* dist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ LDAT_LINEAR ; 
 scalar_t__ LDAT_NOSCALE ; 
 float MAX_WORLD_COORD ; 
 int /*<<< orphan*/  VOLUME_DIRECTED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* dleafs ; 
 float lightLinearScale ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 float FUNC10 (float) ; 

void FUNC11(vsound_t *light, winding_t *w, int leafnum)
{
	int i;
	float dist;
	lightvolume_t volume;
	vec3_t dir;

	if (light->atten_disttype == LDAT_NOSCALE)
	{
		// light travels without decrease in intensity over distance
		dist = MAX_WORLD_COORD;
	}
	else
	{
		if ( light->atten_disttype == LDAT_LINEAR )
			dist = light->photons * lightLinearScale;
		else
			dist = FUNC10(light->photons);
	}

	FUNC9(&volume, 0, sizeof(lightvolume_t));
	for (i = 0; i < w->numpoints; i++)
	{
		FUNC6(w->points[i], dist, light->normal, volume.points[i]);
		FUNC8(w->points[(i+1)%w->numpoints], w->points[i], dir);
		FUNC0(light->normal, dir, volume.planes[i].normal);
		FUNC7(volume.planes[i].normal, volume.planes[i].normal);
		volume.planes[i].dist = FUNC1(volume.planes[i].normal, w->points[i]);
	}
	volume.numplanes = w->numpoints;
	FUNC4(light->normal, volume.endplane.normal);
	FUNC5(volume.endplane.normal);
	volume.endplane.dist = FUNC1(volume.endplane.normal, volume.points[0]);
	volume.farplane = volume.endplane;
	volume.surfaceNum = -1;
	volume.type = VOLUME_DIRECTED;
	volume.cluster = dleafs[leafnum].cluster;
	FUNC3(light, &volume, volume.cluster, 0);
	if (volume.surfaceNum >= 0)
	{
		FUNC2(light, &volume);
	}
}