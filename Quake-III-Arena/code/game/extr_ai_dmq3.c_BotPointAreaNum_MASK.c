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
typedef  int* vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int FUNC1 (int*) ; 
 int FUNC2 (int*,int*,int*,int /*<<< orphan*/ *,int) ; 

int FUNC3(vec3_t origin) {
	int areanum, numareas, areas[10];
	vec3_t end;

	areanum = FUNC1(origin);
	if (areanum) return areanum;
	FUNC0(origin, end);
	end[2] += 10;
	numareas = FUNC2(origin, end, areas, NULL, 10);
	if (numareas > 0) return areas[0];
	return 0;
}