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

/* Variables and functions */
 int /*<<< orphan*/  PU_STATIC ; 
 int /*<<< orphan*/  FUNC0 (short*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (short*,short*,int) ; 

void
FUNC3
( short*	array,
  int		width,
  int		height )
{
    int		x;
    int		y;
    short*	dest;

    dest = (short*) FUNC1(width*height*2, PU_STATIC, 0);

    for(y=0;y<height;y++)
	for(x=0;x<width;x++)
	    dest[x*height+y] = array[y*width+x];

    FUNC2(array, dest, width*height*2);

    FUNC0(dest);

}