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
typedef  scalar_t__ qboolean ;
struct TYPE_5__ {int x; int y; int flags; int /*<<< orphan*/  name; scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  field; TYPE_1__ generic; } ;
typedef  TYPE_2__ menufield_s ;

/* Variables and functions */
 int BIGCHAR_HEIGHT ; 
 int BIGCHAR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,float*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int QMF_GRAYED ; 
 int QMF_SMALLFONT ; 
 int SMALLCHAR_HEIGHT ; 
 int SMALLCHAR_WIDTH ; 
 int UI_BIGFONT ; 
 int UI_BLINK ; 
 int UI_CENTER ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,float*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int,float*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int UI_PULSE ; 
 int UI_RIGHT ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  listbar_color ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 float* text_color_disabled ; 
 float* text_color_highlight ; 
 float* text_color_normal ; 

void FUNC5( menufield_s *f )
{
	int		x;
	int		y;
	int		w;
	int		h;
	int		style;
	qboolean focus;
	float	*color;

	x =	f->generic.x;
	y =	f->generic.y;

	if (f->generic.flags & QMF_SMALLFONT)
	{
		w = SMALLCHAR_WIDTH;
		h = SMALLCHAR_HEIGHT;
		style = UI_SMALLFONT;
	}
	else
	{
		w = BIGCHAR_WIDTH;
		h = BIGCHAR_HEIGHT;
		style = UI_BIGFONT;
	}	

	if (FUNC1( f->generic.parent ) == f) {
		focus = qtrue;
		style |= UI_PULSE;
	}
	else {
		focus = qfalse;
	}

	if (f->generic.flags & QMF_GRAYED)
		color = text_color_disabled;
	else if (focus)
		color = text_color_highlight;
	else
		color = text_color_normal;

	if ( focus )
	{
		// draw cursor
		FUNC4( f->generic.left, f->generic.top, f->generic.right-f->generic.left+1, f->generic.bottom-f->generic.top+1, listbar_color ); 
		FUNC2( x, y, 13, UI_CENTER|UI_BLINK|style, color);
	}

	if ( f->generic.name ) {
		FUNC3( x - w, y, f->generic.name, style|UI_RIGHT, color );
	}

	FUNC0( &f->field, x + w, y, style, color );
}