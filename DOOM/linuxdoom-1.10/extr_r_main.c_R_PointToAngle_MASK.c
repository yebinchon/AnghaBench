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
typedef  int /*<<< orphan*/  fixed_t ;
typedef  int angle_t ;

/* Variables and functions */
 int ANG180 ; 
 int ANG270 ; 
 int ANG90 ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* tantoangle ; 
 scalar_t__ viewx ; 
 scalar_t__ viewy ; 

angle_t
FUNC1
( fixed_t	x,
  fixed_t	y )
{	
    x -= viewx;
    y -= viewy;
    
    if ( (!x) && (!y) )
	return 0;

    if (x>= 0)
    {
	// x >=0
	if (y>= 0)
	{
	    // y>= 0

	    if (x>y)
	    {
		// octant 0
		return tantoangle[ FUNC0(y,x)];
	    }
	    else
	    {
		// octant 1
		return ANG90-1-tantoangle[ FUNC0(x,y)];
	    }
	}
	else
	{
	    // y<0
	    y = -y;

	    if (x>y)
	    {
		// octant 8
		return -tantoangle[FUNC0(y,x)];
	    }
	    else
	    {
		// octant 7
		return ANG270+tantoangle[ FUNC0(x,y)];
	    }
	}
    }
    else
    {
	// x<0
	x = -x;

	if (y>= 0)
	{
	    // y>= 0
	    if (x>y)
	    {
		// octant 3
		return ANG180-1-tantoangle[ FUNC0(y,x)];
	    }
	    else
	    {
		// octant 2
		return ANG90+ tantoangle[ FUNC0(x,y)];
	    }
	}
	else
	{
	    // y<0
	    y = -y;

	    if (x>y)
	    {
		// octant 4
		return ANG180+tantoangle[ FUNC0(y,x)];
	    }
	    else
	    {
		 // octant 5
		return ANG270-1-tantoangle[ FUNC0(x,y)];
	    }
	}
    }
    return 0;
}