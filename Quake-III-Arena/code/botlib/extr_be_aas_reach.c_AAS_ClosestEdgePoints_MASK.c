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
typedef  int* vec3_t ;
struct TYPE_4__ {float dist; int* normal; } ;
typedef  TYPE_1__ aas_plane_t ;

/* Variables and functions */
 float FUNC0 (int*,int*) ; 
 scalar_t__ FUNC1 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 float FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int*) ; 
 int qfalse ; 
 int qtrue ; 

float FUNC5(vec3_t v1, vec3_t v2, vec3_t v3, vec3_t v4,
							aas_plane_t *plane1, aas_plane_t *plane2,
							vec3_t beststart1, vec3_t bestend1,
							vec3_t beststart2, vec3_t bestend2, float bestdist)
{
	vec3_t dir1, dir2, p1, p2, p3, p4;
	float a1, a2, b1, b2, dist, dist1, dist2;
	int founddist;

	//edge vectors
	FUNC4(v2, v1, dir1);
	FUNC4(v4, v3, dir2);
	//get the horizontal directions
	dir1[2] = 0;
	dir2[2] = 0;
	//
	// p1 = point on an edge vector of area2 closest to v1
	// p2 = point on an edge vector of area2 closest to v2
	// p3 = point on an edge vector of area1 closest to v3
	// p4 = point on an edge vector of area1 closest to v4
	//
	if (dir2[0])
	{
		a2 = dir2[1] / dir2[0];
		b2 = v3[1] - a2 * v3[0];
		//point on the edge vector of area2 closest to v1
		p1[0] = (FUNC0(v1, dir2) - (a2 * dir2[0] + b2 * dir2[1])) / dir2[0];
		p1[1] = a2 * p1[0] + b2;
		//point on the edge vector of area2 closest to v2
		p2[0] = (FUNC0(v2, dir2) - (a2 * dir2[0] + b2 * dir2[1])) / dir2[0];
		p2[1] = a2 * p2[0] + b2;
	} //end if
	else
	{
		//point on the edge vector of area2 closest to v1
		p1[0] = v3[0];
		p1[1] = v1[1];
		//point on the edge vector of area2 closest to v2
		p2[0] = v3[0];
		p2[1] = v2[1];
	} //end else
	//
	if (dir1[0])
	{
		//
		a1 = dir1[1] / dir1[0];
		b1 = v1[1] - a1 * v1[0];
		//point on the edge vector of area1 closest to v3
		p3[0] = (FUNC0(v3, dir1) - (a1 * dir1[0] + b1 * dir1[1])) / dir1[0];
		p3[1] = a1 * p3[0] + b1;
		//point on the edge vector of area1 closest to v4
		p4[0] = (FUNC0(v4, dir1) - (a1 * dir1[0] + b1 * dir1[1])) / dir1[0];
		p4[1] = a1 * p4[0] + b1;
	} //end if
	else
	{
		//point on the edge vector of area1 closest to v3
		p3[0] = v1[0];
		p3[1] = v3[1];
		//point on the edge vector of area1 closest to v4
		p4[0] = v1[0];
		p4[1] = v4[1];
	} //end else
	//start with zero z-coordinates
	p1[2] = 0;
	p2[2] = 0;
	p3[2] = 0;
	p4[2] = 0;
	//calculate the z-coordinates from the ground planes
	p1[2] = (plane2->dist - FUNC0(plane2->normal, p1)) / plane2->normal[2];
	p2[2] = (plane2->dist - FUNC0(plane2->normal, p2)) / plane2->normal[2];
	p3[2] = (plane1->dist - FUNC0(plane1->normal, p3)) / plane1->normal[2];
	p4[2] = (plane1->dist - FUNC0(plane1->normal, p4)) / plane1->normal[2];
	//
	founddist = qfalse;
	//
	if (FUNC1(p1, v3, v4))
	{
		dist = FUNC3(v1, p1);
		if (dist > bestdist - 0.5 && dist < bestdist + 0.5)
		{
			dist1 = FUNC3(beststart1, v1);
			dist2 = FUNC3(beststart2, v1);
			if (dist1 > dist2)
			{
				if (dist1 > FUNC3(beststart1, beststart2)) FUNC2(v1, beststart2);
			} //end if
			else
			{
				if (dist2 > FUNC3(beststart1, beststart2)) FUNC2(v1, beststart1);
			} //end else
			dist1 = FUNC3(bestend1, p1);
			dist2 = FUNC3(bestend2, p1);
			if (dist1 > dist2)
			{
				if (dist1 > FUNC3(bestend1, bestend2)) FUNC2(p1, bestend2);
			} //end if
			else
			{
				if (dist2 > FUNC3(bestend1, bestend2)) FUNC2(p1, bestend1);
			} //end else
		} //end if
		else if (dist < bestdist)
		{
			bestdist = dist;
			FUNC2(v1, beststart1);
			FUNC2(v1, beststart2);
			FUNC2(p1, bestend1);
			FUNC2(p1, bestend2);
		} //end if
		founddist = qtrue;
	} //end if
	if (FUNC1(p2, v3, v4))
	{
		dist = FUNC3(v2, p2);
		if (dist > bestdist - 0.5 && dist < bestdist + 0.5)
		{
			dist1 = FUNC3(beststart1, v2);
			dist2 = FUNC3(beststart2, v2);
			if (dist1 > dist2)
			{
				if (dist1 > FUNC3(beststart1, beststart2)) FUNC2(v2, beststart2);
			} //end if
			else
			{
				if (dist2 > FUNC3(beststart1, beststart2)) FUNC2(v2, beststart1);
			} //end else
			dist1 = FUNC3(bestend1, p2);
			dist2 = FUNC3(bestend2, p2);
			if (dist1 > dist2)
			{
				if (dist1 > FUNC3(bestend1, bestend2)) FUNC2(p2, bestend2);
			} //end if
			else
			{
				if (dist2 > FUNC3(bestend1, bestend2)) FUNC2(p2, bestend1);
			} //end else
		} //end if
		else if (dist < bestdist)
		{
			bestdist = dist;
			FUNC2(v2, beststart1);
			FUNC2(v2, beststart2);
			FUNC2(p2, bestend1);
			FUNC2(p2, bestend2);
		} //end if
		founddist = qtrue;
	} //end else if
	if (FUNC1(p3, v1, v2))
	{
		dist = FUNC3(v3, p3);
		if (dist > bestdist - 0.5 && dist < bestdist + 0.5)
		{
			dist1 = FUNC3(beststart1, p3);
			dist2 = FUNC3(beststart2, p3);
			if (dist1 > dist2)
			{
				if (dist1 > FUNC3(beststart1, beststart2)) FUNC2(p3, beststart2);
			} //end if
			else
			{
				if (dist2 > FUNC3(beststart1, beststart2)) FUNC2(p3, beststart1);
			} //end else
			dist1 = FUNC3(bestend1, v3);
			dist2 = FUNC3(bestend2, v3);
			if (dist1 > dist2)
			{
				if (dist1 > FUNC3(bestend1, bestend2)) FUNC2(v3, bestend2);
			} //end if
			else
			{
				if (dist2 > FUNC3(bestend1, bestend2)) FUNC2(v3, bestend1);
			} //end else
		} //end if
		else if (dist < bestdist)
		{
			bestdist = dist;
			FUNC2(p3, beststart1);
			FUNC2(p3, beststart2);
			FUNC2(v3, bestend1);
			FUNC2(v3, bestend2);
		} //end if
		founddist = qtrue;
	} //end else if
	if (FUNC1(p4, v1, v2))
	{
		dist = FUNC3(v4, p4);
		if (dist > bestdist - 0.5 && dist < bestdist + 0.5)
		{
			dist1 = FUNC3(beststart1, p4);
			dist2 = FUNC3(beststart2, p4);
			if (dist1 > dist2)
			{
				if (dist1 > FUNC3(beststart1, beststart2)) FUNC2(p4, beststart2);
			} //end if
			else
			{
				if (dist2 > FUNC3(beststart1, beststart2)) FUNC2(p4, beststart1);
			} //end else
			dist1 = FUNC3(bestend1, v4);
			dist2 = FUNC3(bestend2, v4);
			if (dist1 > dist2)
			{
				if (dist1 > FUNC3(bestend1, bestend2)) FUNC2(v4, bestend2);
			} //end if
			else
			{
				if (dist2 > FUNC3(bestend1, bestend2)) FUNC2(v4, bestend1);
			} //end else
		} //end if
		else if (dist < bestdist)
		{
			bestdist = dist;
			FUNC2(p4, beststart1);
			FUNC2(p4, beststart2);
			FUNC2(v4, bestend1);
			FUNC2(v4, bestend2);
		} //end if
		founddist = qtrue;
	} //end else if
	//if no shortest distance was found the shortest distance
	//is between one of the vertexes of edge1 and one of edge2
	if (!founddist)
	{
		dist = FUNC3(v1, v3);
		if (dist < bestdist)
		{
			bestdist = dist;
			FUNC2(v1, beststart1);
			FUNC2(v1, beststart2);
			FUNC2(v3, bestend1);
			FUNC2(v3, bestend2);
		} //end if
		dist = FUNC3(v1, v4);
		if (dist < bestdist)
		{
			bestdist = dist;
			FUNC2(v1, beststart1);
			FUNC2(v1, beststart2);
			FUNC2(v4, bestend1);
			FUNC2(v4, bestend2);
		} //end if
		dist = FUNC3(v2, v3);
		if (dist < bestdist)
		{
			bestdist = dist;
			FUNC2(v2, beststart1);
			FUNC2(v2, beststart2);
			FUNC2(v3, bestend1);
			FUNC2(v3, bestend2);
		} //end if
		dist = FUNC3(v2, v4);
		if (dist < bestdist)
		{
			bestdist = dist;
			FUNC2(v2, beststart1);
			FUNC2(v2, beststart2);
			FUNC2(v4, bestend1);
			FUNC2(v4, bestend2);
		} //end if
	} //end if
	return bestdist;
}