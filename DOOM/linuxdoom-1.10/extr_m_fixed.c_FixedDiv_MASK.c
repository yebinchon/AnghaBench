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
typedef  int fixed_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int MAXINT ; 
 int MININT ; 
 int FUNC1 (int) ; 

fixed_t
FUNC2
( fixed_t	a,
  fixed_t	b )
{
    if ( (FUNC1(a)>>14) >= FUNC1(b))
	return (a^b)<0 ? MININT : MAXINT;
    return FUNC0 (a,b);
}