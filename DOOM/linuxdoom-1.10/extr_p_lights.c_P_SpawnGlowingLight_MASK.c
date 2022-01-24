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
struct TYPE_9__ {scalar_t__ special; int /*<<< orphan*/  lightlevel; } ;
typedef  TYPE_2__ sector_t ;
struct TYPE_8__ {scalar_t__ acp1; } ;
struct TYPE_11__ {TYPE_1__ function; } ;
struct TYPE_10__ {int direction; TYPE_7__ thinker; int /*<<< orphan*/  maxlight; int /*<<< orphan*/  minlight; TYPE_2__* sector; } ;
typedef  TYPE_3__ glow_t ;
typedef  scalar_t__ actionf_p1 ;

/* Variables and functions */
 int /*<<< orphan*/  PU_LEVSPEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ T_Glow ; 
 TYPE_3__* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(sector_t*	sector)
{
    glow_t*	g;
	
    g = FUNC2( sizeof(*g), PU_LEVSPEC, 0);

    FUNC0(&g->thinker);

    g->sector = sector;
    g->minlight = FUNC1(sector,sector->lightlevel);
    g->maxlight = sector->lightlevel;
    g->thinker.function.acp1 = (actionf_p1) T_Glow;
    g->direction = -1;

    sector->special = 0;
}