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
typedef  scalar_t__ fixed_t ;
struct TYPE_4__ {int dy; int dx; int x; int y; } ;
typedef  TYPE_1__ divline_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int,int) ; 

fixed_t
FUNC2
( divline_t*	v2,
  divline_t*	v1 )
{
    fixed_t	frac;
    fixed_t	num;
    fixed_t	den;
	
    den = FUNC1 (v1->dy>>8,v2->dx) - FUNC1(v1->dx>>8,v2->dy);

    if (den == 0)
	return 0;
    //	I_Error ("P_InterceptVector: parallel");
    
    num = FUNC1 ( (v1->x - v2->x)>>8 ,v1->dy) + 
	FUNC1 ( (v2->y - v1->y)>>8 , v1->dx);
    frac = FUNC0 (num , den);

    return frac;
}