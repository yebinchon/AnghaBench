#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
struct TYPE_3__ {int widthInChars; char* buffer; int scroll; int cursor; } ;
typedef  TYPE_1__ mfield_t ;

/* Variables and functions */
 int BIGCHAR_WIDTH ; 
 int GIANTCHAR_WIDTH ; 
 int MAX_STRING_CHARS ; 
 int SMALLCHAR_WIDTH ; 
 int UI_BLINK ; 
 int UI_CENTER ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*,int,int /*<<< orphan*/ ) ; 
 int UI_GIANTFONT ; 
 int UI_PULSE ; 
 int UI_RIGHT ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 () ; 

void FUNC6( mfield_t *edit, int x, int y, int style, vec4_t color ) {
	int		len;
	int		charw;
	int		drawLen;
	int		prestep;
	int		cursorChar;
	char	str[MAX_STRING_CHARS];

	drawLen = edit->widthInChars;
	len     = FUNC3( edit->buffer ) + 1;

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
	}

	if ( prestep + drawLen > len ) {
		drawLen = len - prestep;
	}

	// extract <drawLen> characters from the field at <prestep>
	if ( drawLen >= MAX_STRING_CHARS ) {
		FUNC4( "drawLen >= MAX_STRING_CHARS" );
	}
	FUNC2( str, edit->buffer + prestep, drawLen );
	str[ drawLen ] = 0;

	FUNC1( x, y, str, style, color );

	// draw the cursor
	if (!(style & UI_PULSE)) {
		return;
	}

	if ( FUNC5() ) {
		cursorChar = 11;
	} else {
		cursorChar = 10;
	}

	style &= ~UI_PULSE;
	style |= UI_BLINK;

	if (style & UI_SMALLFONT)
	{
		charw =	SMALLCHAR_WIDTH;
	}
	else if (style & UI_GIANTFONT)
	{
		charw =	GIANTCHAR_WIDTH;
	}
	else
	{
		charw =	BIGCHAR_WIDTH;
	}

	if (style & UI_CENTER)
	{
		len = FUNC3(str);
		x = x - len*charw/2;
	}
	else if (style & UI_RIGHT)
	{
		len = FUNC3(str);
		x = x - len*charw;
	}
	
	FUNC0( x + ( edit->cursor - prestep ) * charw, y, cursorChar, style & ~(UI_CENTER|UI_RIGHT), color );
}