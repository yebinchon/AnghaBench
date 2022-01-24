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
typedef  int /*<<< orphan*/  winding_t ;
typedef  int /*<<< orphan*/  vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ON_EPSILON ; 

winding_t	*FUNC2 (winding_t *in, vec3_t normal, vec_t dist)
{
	winding_t	*f, *b;

	FUNC0 (in, normal, dist, ON_EPSILON, &f, &b);
	FUNC1 (in);
	if (b)
		FUNC1 (b);
	return f;
}