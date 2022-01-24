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
struct TYPE_4__ {int angle; } ;
typedef  TYPE_1__ mobj_t ;
typedef  int /*<<< orphan*/  boolean ;
typedef  int angle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MISSILERANGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  bulletslope ; 

void
FUNC2
( mobj_t*	mo,
  boolean	accurate )
{
    angle_t	angle;
    int		damage;
	
    damage = 5*(FUNC1 ()%3+1);
    angle = mo->angle;

    if (!accurate)
	angle += (FUNC1()-FUNC1())<<18;

    FUNC0 (mo, angle, MISSILERANGE, bulletslope, damage);
}