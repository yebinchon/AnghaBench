#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec4_t ;
struct TYPE_2__ {int realtime; int /*<<< orphan*/  charsetProp; int /*<<< orphan*/  charsetPropGlow; } ;

/* Variables and functions */
 int PULSE_DIVISOR ; 
#define  UI_CENTER 130 
 int UI_DROPSHADOW ; 
 int /*<<< orphan*/  FUNC0 (int,int,char const*,double*,float,int /*<<< orphan*/ ) ; 
 int UI_FORMATMASK ; 
 int UI_INVERSE ; 
#define  UI_LEFT 129 
 int UI_PULSE ; 
 float FUNC1 (int) ; 
 float FUNC2 (char const*) ; 
#define  UI_RIGHT 128 
 double FUNC3 (int) ; 
 TYPE_1__ uis ; 

void FUNC4( int x, int y, const char* str, int style, vec4_t color ) {
	vec4_t	drawcolor;
	int		width;
	float	sizeScale;

	sizeScale = FUNC1( style );

	switch( style & UI_FORMATMASK ) {
		case UI_CENTER:
			width = FUNC2( str ) * sizeScale;
			x -= width / 2;
			break;

		case UI_RIGHT:
			width = FUNC2( str ) * sizeScale;
			x -= width;
			break;

		case UI_LEFT:
		default:
			break;
	}

	if ( style & UI_DROPSHADOW ) {
		drawcolor[0] = drawcolor[1] = drawcolor[2] = 0;
		drawcolor[3] = color[3];
		FUNC0( x+2, y+2, str, drawcolor, sizeScale, uis.charsetProp );
	}

	if ( style & UI_INVERSE ) {
		drawcolor[0] = color[0] * 0.7;
		drawcolor[1] = color[1] * 0.7;
		drawcolor[2] = color[2] * 0.7;
		drawcolor[3] = color[3];
		FUNC0( x, y, str, drawcolor, sizeScale, uis.charsetProp );
		return;
	}

	if ( style & UI_PULSE ) {
		drawcolor[0] = color[0] * 0.7;
		drawcolor[1] = color[1] * 0.7;
		drawcolor[2] = color[2] * 0.7;
		drawcolor[3] = color[3];
		FUNC0( x, y, str, color, sizeScale, uis.charsetProp );

		drawcolor[0] = color[0];
		drawcolor[1] = color[1];
		drawcolor[2] = color[2];
		drawcolor[3] = 0.5 + 0.5 * FUNC3( uis.realtime / PULSE_DIVISOR );
		FUNC0( x, y, str, drawcolor, sizeScale, uis.charsetPropGlow );
		return;
	}

	FUNC0( x, y, str, color, sizeScale, uis.charsetProp );
}