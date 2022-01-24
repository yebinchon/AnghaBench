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
typedef  float* vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*,int) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*) ; 

void FUNC2(vec3_t origin, float size, int color)
{
	int i;
	vec3_t start, end;

	for (i = 0; i < 3; i++)
	{
		FUNC1(origin, start);
		start[i] += size;
		FUNC1(origin, end);
		end[i] -= size;
		FUNC0(start, end, color);
	} //end for
}