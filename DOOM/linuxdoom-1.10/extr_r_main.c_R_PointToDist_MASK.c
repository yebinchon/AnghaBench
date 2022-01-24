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
typedef  scalar_t__ fixed_t ;

/* Variables and functions */
 int ANG90 ; 
 int ANGLETOFINESHIFT ; 
 size_t DBITS ; 
 size_t FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__* finesine ; 
 int* tantoangle ; 
 scalar_t__ viewx ; 
 scalar_t__ viewy ; 

fixed_t
FUNC2
( fixed_t	x,
  fixed_t	y )
{
    int		angle;
    fixed_t	dx;
    fixed_t	dy;
    fixed_t	temp;
    fixed_t	dist;
	
    dx = FUNC1(x - viewx);
    dy = FUNC1(y - viewy);
	
    if (dy>dx)
    {
	temp = dx;
	dx = dy;
	dy = temp;
    }
	
    angle = (tantoangle[ FUNC0(dy,dx)>>DBITS ]+ANG90) >> ANGLETOFINESHIFT;

    // use as cosine
    dist = FUNC0 (dx, finesine[angle] );	
	
    return dist;
}