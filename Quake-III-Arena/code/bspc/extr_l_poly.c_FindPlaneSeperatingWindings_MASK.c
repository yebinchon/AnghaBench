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
struct TYPE_4__ {int numpoints; float** p; } ;
typedef  TYPE_1__ winding_t ;
typedef  float* vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*,float*) ; 
 float FUNC1 (float*,float*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (float*,float*) ; 
 double FUNC4 (float*) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*) ; 
 int /*<<< orphan*/  FUNC6 (float*) ; 
 int /*<<< orphan*/  FUNC7 (float*,float*,float*) ; 

int FUNC8(winding_t *w1, winding_t *w2, vec3_t dir,
											vec3_t normal, float *dist)
{
	int i, i2, j, j2, n;
	int sides1[3], sides2[3];
	float dist1, dist2, dot, diff;
	vec3_t normal1, normal2;
	vec3_t v1, v2;

	for (i = 0; i < w1->numpoints; i++)
	{
		i2 = (i+1) % w1->numpoints;
		//
		FUNC7(w1->p[i2], w1->p[i], v1);
		if (FUNC4(v1) < 0.1)
		{
			//Log_Write("FindPlaneSeperatingWindings: winding1 with degenerate edge\r\n");
			continue;
		} //end if
		FUNC0(v1, dir, normal1);
		FUNC6(normal1);
		dist1 = FUNC1(normal1, w1->p[i]);
		//
		for (j = 0; j < w2->numpoints; j++)
		{
			j2 = (j+1) % w2->numpoints;
			//
			FUNC7(w2->p[j2], w2->p[j], v2);
			if (FUNC4(v2) < 0.1)
			{
				//Log_Write("FindPlaneSeperatingWindings: winding2 with degenerate edge\r\n");
				continue;
			} //end if
			FUNC0(v2, dir, normal2);
			FUNC6(normal2);
			dist2 = FUNC1(normal2, w2->p[j]);
			//
			diff = dist1 - dist2;
			if (diff < -0.1 || diff > 0.1)
			{
				dist2 = -dist2;
				FUNC5(normal2, normal2);
				diff = dist1 - dist2;
				if (diff < -0.1 || diff > 0.1) continue;
			} //end if
			//check if the normal vectors are equal
			for (n = 0; n < 3; n++)
			{
				diff = normal1[n] - normal2[n];
				if (diff < -0.0001 || diff > 0.0001) break;
			} //end for
			if (n != 3) continue;
			//check on which side of the seperating plane the points of
			//the first winding are
			sides1[0] = sides1[1] = sides1[2] = 0;
			for (n = 0; n < w1->numpoints; n++)
			{
				dot = FUNC1(w1->p[n], normal1) - dist1;
				if (dot > 0.1) sides1[0]++;
				else if (dot < -0.1) sides1[1]++;
				else sides1[2]++;
			} //end for
			//check on which side of the seperating plane the points of
			//the second winding are
			sides2[0] = sides2[1] = sides2[2] = 0;
			for (n = 0; n < w2->numpoints; n++)
			{
				//used normal1 and dist1 (they are equal to normal2 and dist2)
				dot = FUNC1(w2->p[n], normal1) - dist1;
				if (dot > 0.1) sides2[0]++;
				else if (dot < -0.1) sides2[1]++;
				else sides2[2]++;
			} //end for
			//if the first winding has points at both sides
			if (sides1[0] && sides1[1])
			{
				FUNC2("FindPlaneSeperatingWindings: winding1 non-convex\r\n");
				continue;
			} //end if
			//if the second winding has points at both sides
			if (sides2[0] && sides2[1])
			{
				FUNC2("FindPlaneSeperatingWindings: winding2 non-convex\r\n");
				continue;
			} //end if
			//
			if ((!sides1[0] && !sides1[1]) || (!sides2[0] && !sides2[1]))
			{
				//don't use one of the winding planes as the seperating plane
				continue;
			} //end if
			//the windings must be at different sides of the seperating plane
			if ((!sides1[0] && !sides2[1]) || (!sides1[1] && !sides2[0]))
			{
				FUNC3(normal1, normal);
				*dist = dist1;
				return true;
			} //end if
		} //end for
	} //end for
	return false;
}