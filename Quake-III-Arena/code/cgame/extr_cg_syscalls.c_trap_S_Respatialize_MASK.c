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
 int /*<<< orphan*/  CG_S_RESPATIALIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int) ; 

void	FUNC1( int entityNum, const vec3_t origin, vec3_t axis[3], int inwater ) {
	FUNC0( CG_S_RESPATIALIZE, entityNum, origin, axis, inwater );
}