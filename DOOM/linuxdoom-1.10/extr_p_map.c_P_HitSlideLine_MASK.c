#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ slopetype; void* dy; void* dx; } ;
typedef  TYPE_1__ line_t ;
typedef  void* fixed_t ;
typedef  size_t angle_t ;
struct TYPE_6__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 size_t ANG180 ; 
 size_t ANGLETOFINESHIFT ; 
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*) ; 
 scalar_t__ ST_HORIZONTAL ; 
 scalar_t__ ST_VERTICAL ; 
 int /*<<< orphan*/ * finecosine ; 
 int /*<<< orphan*/ * finesine ; 
 TYPE_2__* slidemo ; 
 void* tmxmove ; 
 void* tmymove ; 

void FUNC4 (line_t* ld)
{
    int			side;

    angle_t		lineangle;
    angle_t		moveangle;
    angle_t		deltaangle;
    
    fixed_t		movelen;
    fixed_t		newlen;
	
	
    if (ld->slopetype == ST_HORIZONTAL)
    {
	tmymove = 0;
	return;
    }
    
    if (ld->slopetype == ST_VERTICAL)
    {
	tmxmove = 0;
	return;
    }
	
    side = FUNC2 (slidemo->x, slidemo->y, ld);
	
    lineangle = FUNC3 (0,0, ld->dx, ld->dy);

    if (side == 1)
	lineangle += ANG180;

    moveangle = FUNC3 (0,0, tmxmove, tmymove);
    deltaangle = moveangle-lineangle;

    if (deltaangle > ANG180)
	deltaangle += ANG180;
    //	I_Error ("SlideLine: ang>ANG180");

    lineangle >>= ANGLETOFINESHIFT;
    deltaangle >>= ANGLETOFINESHIFT;
	
    movelen = FUNC1 (tmxmove, tmymove);
    newlen = FUNC0 (movelen, finecosine[deltaangle]);

    tmxmove = FUNC0 (newlen, finecosine[lineangle]);	
    tmymove = FUNC0 (newlen, finesine[lineangle]);	
}