#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* y; void* x; } ;
struct TYPE_6__ {void* y; void* x; } ;
struct TYPE_8__ {TYPE_2__ b; TYPE_1__ a; } ;
typedef  TYPE_3__ mline_t ;
typedef  scalar_t__ fixed_t ;
typedef  int /*<<< orphan*/  angle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (void**,void**,int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__,void*) ; 

void
FUNC3
( mline_t*	lineguy,
  int		lineguylines,
  fixed_t	scale,
  angle_t	angle,
  int		color,
  fixed_t	x,
  fixed_t	y )
{
    int		i;
    mline_t	l;

    for (i=0;i<lineguylines;i++)
    {
	l.a.x = lineguy[i].a.x;
	l.a.y = lineguy[i].a.y;

	if (scale)
	{
	    l.a.x = FUNC2(scale, l.a.x);
	    l.a.y = FUNC2(scale, l.a.y);
	}

	if (angle)
	    FUNC1(&l.a.x, &l.a.y, angle);

	l.a.x += x;
	l.a.y += y;

	l.b.x = lineguy[i].b.x;
	l.b.y = lineguy[i].b.y;

	if (scale)
	{
	    l.b.x = FUNC2(scale, l.b.x);
	    l.b.y = FUNC2(scale, l.b.y);
	}

	if (angle)
	    FUNC1(&l.b.x, &l.b.y, angle);
	
	l.b.x += x;
	l.b.y += y;

	FUNC0(&l, color);
    }
}