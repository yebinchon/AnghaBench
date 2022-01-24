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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 float DISTANCEFACTOR_CROUCH ; 
 float DISTANCEFACTOR_SWIM ; 
 float DISTANCEFACTOR_WALK ; 
 float FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned short int FUNC4(int areanum, vec3_t start, vec3_t end)
{
	int intdist;
	float dist;
	vec3_t dir;

	FUNC3(start, end, dir);
	dist = FUNC2(dir);
	//if crouch only area
	if (FUNC0(areanum)) dist *= DISTANCEFACTOR_CROUCH;
	//if swim area
	else if (FUNC1(areanum)) dist *= DISTANCEFACTOR_SWIM;
	//normal walk area
	else dist *= DISTANCEFACTOR_WALK;
	//
	intdist = (int) dist;
	//make sure the distance isn't zero
	if (intdist <= 0) intdist = 1;
	return intdist;
}