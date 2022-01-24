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
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_4__ {int /*<<< orphan*/ * axis; } ;
typedef  TYPE_1__ orientation_t ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3 (vec3_t in, orientation_t *surface, orientation_t *camera, vec3_t out) {
	int		i;
	float	d;

	FUNC1( out );
	for ( i = 0 ; i < 3 ; i++ ) {
		d = FUNC0(in, surface->axis[i]);
		FUNC2( out, d, camera->axis[i], out );
	}
}