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
typedef  size_t angle_t ;

/* Variables and functions */
 size_t ANGLETOFINESHIFT ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * finecosine ; 
 int /*<<< orphan*/ * finesine ; 

void
FUNC1
( fixed_t*	x,
  fixed_t*	y,
  angle_t	a )
{
    fixed_t tmpx;

    tmpx =
	FUNC0(*x,finecosine[a>>ANGLETOFINESHIFT])
	- FUNC0(*y,finesine[a>>ANGLETOFINESHIFT]);
    
    *y   =
	FUNC0(*x,finesine[a>>ANGLETOFINESHIFT])
	+ FUNC0(*y,finecosine[a>>ANGLETOFINESHIFT]);

    *x = tmpx;
}