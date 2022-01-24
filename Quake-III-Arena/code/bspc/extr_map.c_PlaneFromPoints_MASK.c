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
typedef  int /*<<< orphan*/  vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int /*<<< orphan*/ ) ; 

int FUNC5 (int *p0, int *p1, int *p2)
{
	vec3_t	t1, t2, normal;
	vec_t	dist;

	FUNC4 (p0, p1, t1);
	FUNC4 (p2, p1, t2);
	FUNC0 (t1, t2, normal);
	FUNC3 (normal);

	dist = FUNC1 (p0, normal);

	return FUNC2 (normal, dist);
}