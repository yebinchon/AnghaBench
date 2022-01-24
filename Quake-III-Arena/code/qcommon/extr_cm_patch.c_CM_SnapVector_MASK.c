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
 scalar_t__ NORMAL_EPSILON ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int) ; 

void FUNC2(vec3_t normal) {
	int		i;

	for (i=0 ; i<3 ; i++)
	{
		if ( FUNC1(normal[i] - 1) < NORMAL_EPSILON )
		{
			FUNC0 (normal);
			normal[i] = 1;
			break;
		}
		if ( FUNC1(normal[i] - -1) < NORMAL_EPSILON )
		{
			FUNC0 (normal);
			normal[i] = -1;
			break;
		}
	}
}