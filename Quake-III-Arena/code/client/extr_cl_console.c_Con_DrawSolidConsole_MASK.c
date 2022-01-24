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
typedef  int* vec4_t ;
struct TYPE_5__ {float vidHeight; scalar_t__ vidWidth; } ;
struct TYPE_8__ {TYPE_1__ glconfig; int /*<<< orphan*/  consoleShader; } ;
struct TYPE_7__ {int vislines; int display; int current; int linewidth; scalar_t__ x; int totallines; short* text; scalar_t__ xadjust; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* SetColor ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_RED ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 short* Q3_VERSION ; 
 float SCREEN_HEIGHT ; 
 int /*<<< orphan*/  SCREEN_WIDTH ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,short) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int*) ; 
 int SMALLCHAR_HEIGHT ; 
 int SMALLCHAR_WIDTH ; 
 TYPE_4__ cls ; 
 TYPE_3__ con ; 
 int /*<<< orphan*/ ** g_color_table ; 
 TYPE_2__ re ; 
 int FUNC6 (short*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12( float frac ) {
	int				i, x, y;
	int				rows;
	short			*text;
	int				row;
	int				lines;
//	qhandle_t		conShader;
	int				currentColor;
	vec4_t			color;

	lines = cls.glconfig.vidHeight * frac;
	if (lines <= 0)
		return;

	if (lines > cls.glconfig.vidHeight )
		lines = cls.glconfig.vidHeight;

	// on wide screens, we will center the text
	con.xadjust = 0;
	FUNC2( &con.xadjust, NULL, NULL, NULL );

	// draw the background
	y = frac * SCREEN_HEIGHT - 2;
	if ( y < 1 ) {
		y = 0;
	}
	else {
		FUNC3( 0, 0, SCREEN_WIDTH, y, cls.consoleShader );
	}

	color[0] = 1;
	color[1] = 0;
	color[2] = 0;
	color[3] = 1;
	FUNC5( 0, y, SCREEN_WIDTH, 2, color );


	// draw the version number

	re.SetColor( g_color_table[FUNC0(COLOR_RED)] );

	i = FUNC6( Q3_VERSION );

	for (x=0 ; x<i ; x++) {

		FUNC4( cls.glconfig.vidWidth - ( i - x ) * SMALLCHAR_WIDTH, 

			(lines-(SMALLCHAR_HEIGHT+SMALLCHAR_HEIGHT/2)), Q3_VERSION[x] );

	}


	// draw the text
	con.vislines = lines;
	rows = (lines-SMALLCHAR_WIDTH)/SMALLCHAR_WIDTH;		// rows of text to draw

	y = lines - (SMALLCHAR_HEIGHT*3);

	// draw from the bottom up
	if (con.display != con.current)
	{
	// draw arrows to show the buffer is backscrolled
		re.SetColor( g_color_table[FUNC0(COLOR_RED)] );
		for (x=0 ; x<con.linewidth ; x+=4)
			FUNC4( con.xadjust + (x+1)*SMALLCHAR_WIDTH, y, '^' );
		y -= SMALLCHAR_HEIGHT;
		rows--;
	}
	
	row = con.display;

	if ( con.x == 0 ) {
		row--;
	}

	currentColor = 7;
	re.SetColor( g_color_table[currentColor] );

	for (i=0 ; i<rows ; i++, y -= SMALLCHAR_HEIGHT, row--)
	{
		if (row < 0)
			break;
		if (con.current - row >= con.totallines) {
			// past scrollback wrap point
			continue;	
		}

		text = con.text + (row % con.totallines)*con.linewidth;

		for (x=0 ; x<con.linewidth ; x++) {
			if ( ( text[x] & 0xff ) == ' ' ) {
				continue;
			}

			if ( ( (text[x]>>8)&7 ) != currentColor ) {
				currentColor = (text[x]>>8)&7;
				re.SetColor( g_color_table[currentColor] );
			}
			FUNC4(  con.xadjust + (x+1)*SMALLCHAR_WIDTH, y, text[x] & 0xff );
		}
	}

	// draw the input prompt, user text, and cursor if desired
	FUNC1 ();

	re.SetColor( NULL );
}