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
typedef  float* vec4_t ;
struct TYPE_6__ {float x; float y; int flags; int /*<<< orphan*/  parent; scalar_t__ name; } ;
struct TYPE_7__ {float width; float height; float* focuscolor; void* focusshader; TYPE_1__ generic; void* shader; scalar_t__ focuspic; scalar_t__ errorpic; } ;
typedef  TYPE_2__ menubitmap_s ;
struct TYPE_8__ {int realtime; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int PULSE_DIVISOR ; 
 int QMF_CENTER_JUSTIFY ; 
 int QMF_GRAYED ; 
 int QMF_HIGHLIGHT ; 
 int QMF_HIGHLIGHT_IF_FOCUS ; 
 int QMF_PULSE ; 
 int QMF_PULSEIFFOCUS ; 
 int QMF_RIGHT_JUSTIFY ; 
 int /*<<< orphan*/  FUNC1 (float,float,float,float,void*) ; 
 float* colorMdGrey ; 
 float* pulse_color ; 
 double FUNC2 (int) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (float*) ; 
 TYPE_3__ uis ; 

void FUNC5( menubitmap_s *b )
{
	float	x;
	float	y;
	float	w;
	float	h;
	vec4_t	tempcolor;
	float*	color;

	x = b->generic.x;
	y = b->generic.y;
	w = b->width;
	h =	b->height;

	if (b->generic.flags & QMF_RIGHT_JUSTIFY)
	{
		x = x - w;
	}
	else if (b->generic.flags & QMF_CENTER_JUSTIFY)
	{
		x = x - w/2;
	}

	// used to refresh shader
	if (b->generic.name && !b->shader)
	{
		b->shader = FUNC3( b->generic.name );
		if (!b->shader && b->errorpic)
			b->shader = FUNC3( b->errorpic );
	}

	if (b->focuspic && !b->focusshader)
		b->focusshader = FUNC3( b->focuspic );

	if (b->generic.flags & QMF_GRAYED)
	{
		if (b->shader)
		{
			FUNC4( colorMdGrey );
			FUNC1( x, y, w, h, b->shader );
			FUNC4( NULL );
		}
	}
	else
	{
		if (b->shader)
			FUNC1( x, y, w, h, b->shader );

		// bk001204 - parentheses
		if (  ( (b->generic.flags & QMF_PULSE) 
			|| (b->generic.flags & QMF_PULSEIFFOCUS) )
		      && (FUNC0( b->generic.parent ) == b))
		{	
			if (b->focuscolor)			
			{
				tempcolor[0] = b->focuscolor[0];
				tempcolor[1] = b->focuscolor[1];
				tempcolor[2] = b->focuscolor[2];
				color        = tempcolor;	
			}
			else
				color = pulse_color;
			color[3] = 0.5+0.5*FUNC2(uis.realtime/PULSE_DIVISOR);

			FUNC4( color );
			FUNC1( x, y, w, h, b->focusshader );
			FUNC4( NULL );
		}
		else if ((b->generic.flags & QMF_HIGHLIGHT) || ((b->generic.flags & QMF_HIGHLIGHT_IF_FOCUS) && (FUNC0( b->generic.parent ) == b)))
		{	
			if (b->focuscolor)
			{
				FUNC4( b->focuscolor );
				FUNC1( x, y, w, h, b->focusshader );
				FUNC4( NULL );
			}
			else
				FUNC1( x, y, w, h, b->focusshader );
		}
	}
}