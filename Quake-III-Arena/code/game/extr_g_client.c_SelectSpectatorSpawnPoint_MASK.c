#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  gentity_t ;
struct TYPE_2__ {int /*<<< orphan*/  intermission_angle; int /*<<< orphan*/  intermission_origin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ level ; 

gentity_t *FUNC2( vec3_t origin, vec3_t angles ) {
	FUNC0();

	FUNC1( level.intermission_origin, origin );
	FUNC1( level.intermission_angle, angles );

	return NULL;
}