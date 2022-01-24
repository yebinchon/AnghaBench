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
typedef  scalar_t__* vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 float FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

float FUNC4(vec3_t p, vec3_t lp1, vec3_t lp2)
{
	vec3_t proj, dir;
	int j;

	FUNC0(p, lp1, lp2, proj);
	for (j = 0; j < 3; j++)
		if ((proj[j] > lp1[j] && proj[j] > lp2[j]) ||
			(proj[j] < lp1[j] && proj[j] < lp2[j]))
			break;
	if (j < 3) {
		if (FUNC3(proj[j] - lp1[j]) < FUNC3(proj[j] - lp2[j]))
			FUNC2(p, lp1, dir);
		else
			FUNC2(p, lp2, dir);
		return FUNC1(dir);
	}
	FUNC2(p, proj, dir);
	return FUNC1(dir);
}