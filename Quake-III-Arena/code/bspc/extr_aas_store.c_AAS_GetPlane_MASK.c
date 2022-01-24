#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int qboolean ;
struct TYPE_4__ {scalar_t__* normal; int type; void* dist; } ;
typedef  TYPE_1__ aas_plane_t ;
struct TYPE_6__ {int numplanes; TYPE_1__* planes; } ;
struct TYPE_5__ {int max_planes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*) ; 
 TYPE_3__ aasworld ; 
 TYPE_2__ max_aas ; 

qboolean FUNC7(vec3_t normal, vec_t dist, int *planenum)
{
	aas_plane_t *plane, temp;

	//if (AAS_FindPlane(normal, dist, planenum)) return true;
	if (FUNC1(normal, dist, planenum)) return true;

	if (aasworld.numplanes >= max_aas.max_planes-1)
	{
		FUNC3("AAS_MAX_PLANES = %d", max_aas.max_planes);
	} //end if

#ifdef STOREPLANESDOUBLE
	plane = &aasworld.planes[aasworld.numplanes];
	VectorCopy(normal, plane->normal);
	plane->dist = dist;
	plane->type = (plane+1)->type = PlaneTypeForNormal(plane->normal);

	VectorCopy(normal, (plane+1)->normal);
	VectorNegate((plane+1)->normal, (plane+1)->normal);
	(plane+1)->dist = -dist;

	aasworld.numplanes += 2;

	//allways put axial planes facing positive first
	if (plane->type < 3)
	{
		if (plane->normal[0] < 0 || plane->normal[1] < 0 || plane->normal[2] < 0)
		{
			// flip order
			temp = *plane;
			*plane = *(plane+1);
			*(plane+1) = temp;
			*planenum = aasworld.numplanes - 1;
			return false;
		} //end if
	} //end if
	*planenum = aasworld.numplanes - 2;
	//add the planes to the hash
	AAS_AddPlaneToHash(aasworld.numplanes - 1);
	AAS_AddPlaneToHash(aasworld.numplanes - 2);
	return false;
#else
	plane = &aasworld.planes[aasworld.numplanes];
	FUNC5(normal, plane->normal);
	plane->dist = dist;
	plane->type = FUNC2(normal);

	*planenum = aasworld.numplanes;
	aasworld.numplanes++;
	//add the plane to the hash
	FUNC0(aasworld.numplanes - 1);
	return false;
#endif //STOREPLANESDOUBLE
}