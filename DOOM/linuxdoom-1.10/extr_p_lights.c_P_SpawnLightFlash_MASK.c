#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  lightlevel; scalar_t__ special; } ;
typedef  TYPE_2__ sector_t ;
struct TYPE_8__ {scalar_t__ acp1; } ;
struct TYPE_11__ {TYPE_1__ function; } ;
struct TYPE_10__ {int maxtime; int mintime; int count; int /*<<< orphan*/  minlight; int /*<<< orphan*/  maxlight; TYPE_2__* sector; TYPE_7__ thinker; } ;
typedef  TYPE_3__ lightflash_t ;
typedef  scalar_t__ actionf_p1 ;

/* Variables and functions */
 int /*<<< orphan*/  PU_LEVSPEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 scalar_t__ T_LightFlash ; 
 TYPE_3__* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4 (sector_t*	sector)
{
    lightflash_t*	flash;

    // nothing special about it during gameplay
    sector->special = 0;	
	
    flash = FUNC3 ( sizeof(*flash), PU_LEVSPEC, 0);

    FUNC0 (&flash->thinker);

    flash->thinker.function.acp1 = (actionf_p1) T_LightFlash;
    flash->sector = sector;
    flash->maxlight = sector->lightlevel;

    flash->minlight = FUNC1(sector,sector->lightlevel);
    flash->maxtime = 64;
    flash->mintime = 7;
    flash->count = (FUNC2()&flash->maxtime)+1;
}