#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_4__ {int widthInChars; int scroll; int cursor; scalar_t__ buffer; } ;
typedef  TYPE_1__ field_t ;
struct TYPE_5__ {int realtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int MAX_STRING_CHARS ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,char*,double) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,float*,int /*<<< orphan*/ ) ; 
 int SMALLCHAR_WIDTH ; 
 TYPE_2__ cls ; 
 scalar_t__ key_overstrikeMode ; 
 int /*<<< orphan*/  qfalse ; 
 int FUNC6 (scalar_t__) ; 

void FUNC7( field_t *edit, int x, int y, int width, int size, qboolean showCursor ) {
	int		len;
	int		drawLen;
	int		prestep;
	int		cursorChar;
	char	str[MAX_STRING_CHARS];
	int		i;

	drawLen = edit->widthInChars;
	len = FUNC6( edit->buffer ) + 1;

	// guarantee that cursor will be visible
	if ( len <= drawLen ) {
		prestep = 0;
	} else {
		if ( edit->scroll + drawLen > len ) {
			edit->scroll = len - drawLen;
			if ( edit->scroll < 0 ) {
				edit->scroll = 0;
			}
		}
		prestep = edit->scroll;

/*
		if ( edit->cursor < len - drawLen ) {
			prestep = edit->cursor;	// cursor at start
		} else {
			prestep = len - drawLen;
		}
*/
	}

	if ( prestep + drawLen > len ) {
		drawLen = len - prestep;
	}

	// extract <drawLen> characters from the field at <prestep>
	if ( drawLen >= MAX_STRING_CHARS ) {
		FUNC0( ERR_DROP, "drawLen >= MAX_STRING_CHARS" );
	}

	FUNC1( str, edit->buffer + prestep, drawLen );
	str[ drawLen ] = 0;

	// draw it
	if ( size == SMALLCHAR_WIDTH ) {
		float	color[4];

		color[0] = color[1] = color[2] = color[3] = 1.0;
		FUNC5( x, y, str, color, qfalse );
	} else {
		// draw big string with drop shadow
		FUNC3( x, y, str, 1.0 );
	}

	// draw the cursor
	if ( !showCursor ) {
		return;
	}

	if ( (int)( cls.realtime >> 8 ) & 1 ) {
		return;		// off blink
	}

	if ( key_overstrikeMode ) {
		cursorChar = 11;
	} else {
		cursorChar = 10;
	}

	i = drawLen - ( FUNC2( str ) + 1 );

	if ( size == SMALLCHAR_WIDTH ) {
		FUNC4( x + ( edit->cursor - prestep - i ) * size, y, cursorChar );
	} else {
		str[0] = cursorChar;
		str[1] = 0;
		FUNC3( x + ( edit->cursor - prestep - i ) * size, y, str, 1.0 );

	}
}