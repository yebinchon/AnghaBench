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
 float FUNC0 (int /*<<< orphan*/ ,int) ; 

float FUNC1(vec3_t origin)
{
	//rocket radius damage is 120 (p_weapon.c: Weapon_RocketLauncher_Fire)
	return FUNC0(origin, 120);
}