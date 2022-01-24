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
typedef  int /*<<< orphan*/  clipHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__* const,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  BOX_MODEL_HANDLE ; 
 int FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__* const,scalar_t__* const,scalar_t__*) ; 

int	FUNC5( const vec3_t p, clipHandle_t model, const vec3_t origin, const vec3_t angles) {
	vec3_t		p_l;
	vec3_t		temp;
	vec3_t		forward, right, up;

	// subtract origin offset
	FUNC4 (p, origin, p_l);

	// rotate start and end into the models frame of reference
	if ( model != BOX_MODEL_HANDLE && 
	(angles[0] || angles[1] || angles[2]) )
	{
		FUNC0 (angles, forward, right, up);

		FUNC3 (p_l, temp);
		p_l[0] = FUNC2 (temp, forward);
		p_l[1] = -FUNC2 (temp, right);
		p_l[2] = FUNC2 (temp, up);
	}

	return FUNC1( p_l, model );
}