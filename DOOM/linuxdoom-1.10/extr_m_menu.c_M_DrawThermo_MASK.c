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
 int /*<<< orphan*/  PU_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

void
FUNC2
( int	x,
  int	y,
  int	thermWidth,
  int	thermDot )
{
    int		xx;
    int		i;

    xx = x;
    FUNC0 (xx,y,0,FUNC1("M_THERML",PU_CACHE));
    xx += 8;
    for (i=0;i<thermWidth;i++)
    {
	FUNC0 (xx,y,0,FUNC1("M_THERMM",PU_CACHE));
	xx += 8;
    }
    FUNC0 (xx,y,0,FUNC1("M_THERMR",PU_CACHE));

    FUNC0 ((x+8) + thermDot*8,y,
		       0,FUNC1("M_THERMO",PU_CACHE));
}