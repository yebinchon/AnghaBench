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
struct TYPE_4__ {int health; } ;
typedef  TYPE_1__ mobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ commercial ; 
 scalar_t__ gamemode ; 
 int sfx_pdiehi ; 
 int sfx_pldeth ; 

void FUNC1 (mobj_t* mo)
{
    // Default death sound.
    int		sound = sfx_pldeth;
	
    if ( (gamemode == commercial)
	&& 	(mo->health < -50))
    {
	// IF THE PLAYER DIES
	// LESS THAN -50% WITHOUT GIBBING
	sound = sfx_pdiehi;
    }
    
    FUNC0 (mo, sound);
}