#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int qboolean ;
struct TYPE_7__ {int cursor; int /*<<< orphan*/  buffer; } ;
struct TYPE_6__ {scalar_t__ menuPosition; TYPE_1__* parent; } ;
struct TYPE_8__ {TYPE_3__ field; TYPE_2__ generic; } ;
typedef  TYPE_4__ menufield_s ;
struct TYPE_5__ {scalar_t__ cursor; } ;

/* Variables and functions */
 int BIGCHAR_HEIGHT ; 
 int BIGCHAR_WIDTH ; 
 int UI_BLINK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int UI_CENTER ; 
 int /*<<< orphan*/  FUNC1 (int,int,char,int,float*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,char*,int,float*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int,float*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int UI_LEFT ; 
 int UI_PULSE ; 
 int UI_SMALLFONT ; 
 float* color_orange ; 
 float* color_red ; 
 float* color_white ; 
 float* color_yellow ; 
 int /*<<< orphan*/  listbar_color ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static void FUNC6( void *self ) {
	menufield_s		*f;
	qboolean		focus;
	int				style;
	char			c;
	float			*color;
	int				x, y;
	int				val;

	f = (menufield_s *)self;

	focus = (f->generic.parent->cursor == f->generic.menuPosition);

	style = UI_LEFT;
	if( focus ) {
		color = color_yellow;
	}
	else {
		color = color_orange;
	}

	x = 320 - 8 * BIGCHAR_WIDTH;
	y = 240 - BIGCHAR_HEIGHT / 2;
	FUNC4( x, y, 16 * BIGCHAR_WIDTH, BIGCHAR_HEIGHT, listbar_color );
	FUNC3( x, y, f->field.buffer, style, color );

	// draw cursor if we have focus
	if( focus ) {
		if ( FUNC5() ) {
			c = 11;
		} else {
			c = 10;
		}

		style &= ~UI_PULSE;
		style |= UI_BLINK;

		FUNC1( x + f->field.cursor * BIGCHAR_WIDTH, y, c, style, color_white );
	}

	val = FUNC0( f->field.buffer );
	if( val == 1 ) {
		FUNC2( 320, 376, "Please enter your CD Key", UI_CENTER|UI_SMALLFONT, color_yellow );
	}
	else if ( val == 0 ) {
		FUNC2( 320, 376, "The CD Key appears to be valid, thank you", UI_CENTER|UI_SMALLFONT, color_white );
	}
	else {
		FUNC2( 320, 376, "The CD Key is not valid", UI_CENTER|UI_SMALLFONT, color_red );
	}
}