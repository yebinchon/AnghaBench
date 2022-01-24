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
typedef  int /*<<< orphan*/  vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC4(vec3_t start, vec3_t end, float maxdist, float *dist, vec3_t target)
{
	vec3_t dir;
	float curdist;

	FUNC3(end, start, dir);
	curdist = FUNC2(dir);
	if (*dist + curdist < maxdist)
	{
		FUNC0(end, target);
		*dist += curdist;
		return qfalse;
	} //end if
	else
	{
		FUNC1(start, maxdist - *dist, dir, target);
		*dist = maxdist;
		return qtrue;
	} //end else
}