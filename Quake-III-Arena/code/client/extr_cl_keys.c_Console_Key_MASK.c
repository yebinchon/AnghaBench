#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  temp ;
struct TYPE_10__ {scalar_t__ state; } ;
struct TYPE_9__ {char* buffer; int /*<<< orphan*/  widthInChars; int /*<<< orphan*/  cursor; } ;
struct TYPE_8__ {scalar_t__ down; } ;

/* Variables and functions */
 scalar_t__ CA_ACTIVE ; 
 scalar_t__ CA_DISCONNECTED ; 
 size_t COMMAND_HISTORY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 size_t K_CTRL ; 
 int K_DOWNARROW ; 
 int K_END ; 
 int K_ENTER ; 
 int K_HOME ; 
 int K_KP_DOWNARROW ; 
 int K_KP_ENTER ; 
 int K_KP_UPARROW ; 
 int K_MWHEELDOWN ; 
 int K_MWHEELUP ; 
 int K_PGDN ; 
 int K_PGUP ; 
 size_t K_SHIFT ; 
 int K_TAB ; 
 int K_UPARROW ; 
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 TYPE_4__ cls ; 
 TYPE_2__ g_consoleField ; 
 int /*<<< orphan*/  g_console_field_width ; 
 TYPE_2__* historyEditLines ; 
 size_t historyLine ; 
 TYPE_1__* keys ; 
 size_t nextHistoryLine ; 
 char FUNC12 (int) ; 

void FUNC13 (int key) {
	// ctrl-L clears screen
	if ( key == 'l' && keys[K_CTRL].down ) {
		FUNC0 ("clear\n");
		return;
	}

	// enter finishes the line
	if ( key == K_ENTER || key == K_KP_ENTER ) {
		// if not in the game explicitly prepent a slash if needed
		if ( cls.state != CA_ACTIVE && g_consoleField.buffer[0] != '\\' 
			&& g_consoleField.buffer[0] != '/' ) {
			char	temp[MAX_STRING_CHARS];

			FUNC10( temp, g_consoleField.buffer, sizeof( temp ) );
			FUNC2( g_consoleField.buffer, sizeof( g_consoleField.buffer ), "\\%s", temp );
			g_consoleField.cursor++;
		}

		FUNC1 ( "]%s\n", g_consoleField.buffer );

		// leading slash is an explicit command
		if ( g_consoleField.buffer[0] == '\\' || g_consoleField.buffer[0] == '/' ) {
			FUNC0( g_consoleField.buffer+1 );	// valid command
			FUNC0 ("\n");
		} else {
			// other text will be chat messages
			if ( !g_consoleField.buffer[0] ) {
				return;	// empty lines just scroll the console without adding to history
			} else {
				FUNC0 ("cmd say ");
				FUNC0( g_consoleField.buffer );
				FUNC0 ("\n");
			}
		}

		// copy line to history buffer
		historyEditLines[nextHistoryLine % COMMAND_HISTORY] = g_consoleField;
		nextHistoryLine++;
		historyLine = nextHistoryLine;

		FUNC7( &g_consoleField );

		g_consoleField.widthInChars = g_console_field_width;

		if ( cls.state == CA_DISCONNECTED ) {
			FUNC11 ();	// force an update, because the command
		}							// may take some time
		return;
	}

	// command completion

	if (key == K_TAB) {
		FUNC8(&g_consoleField);
		return;
	}

	// command history (ctrl-p ctrl-n for unix style)

	if ( (key == K_MWHEELUP && keys[K_SHIFT].down) || ( key == K_UPARROW ) || ( key == K_KP_UPARROW ) ||
		 ( ( FUNC12(key) == 'p' ) && keys[K_CTRL].down ) ) {
		if ( nextHistoryLine - historyLine < COMMAND_HISTORY 
			&& historyLine > 0 ) {
			historyLine--;
		}
		g_consoleField = historyEditLines[ historyLine % COMMAND_HISTORY ];
		return;
	}

	if ( (key == K_MWHEELDOWN && keys[K_SHIFT].down) || ( key == K_DOWNARROW ) || ( key == K_KP_DOWNARROW ) ||
		 ( ( FUNC12(key) == 'n' ) && keys[K_CTRL].down ) ) {
		if (historyLine == nextHistoryLine)
			return;
		historyLine++;
		g_consoleField = historyEditLines[ historyLine % COMMAND_HISTORY ];
		return;
	}

	// console scrolling
	if ( key == K_PGUP ) {
		FUNC5();
		return;
	}

	if ( key == K_PGDN) {
		FUNC4();
		return;
	}

	if ( key == K_MWHEELUP) {	//----(SA)	added some mousewheel functionality to the console
		FUNC5();
		if(keys[K_CTRL].down) {	// hold <ctrl> to accelerate scrolling
			FUNC5();
			FUNC5();
		}
		return;
	}

	if ( key == K_MWHEELDOWN) {	//----(SA)	added some mousewheel functionality to the console
		FUNC4();
		if(keys[K_CTRL].down) {	// hold <ctrl> to accelerate scrolling
			FUNC4();
			FUNC4();
		}
		return;
	}

	// ctrl-home = top of console
	if ( key == K_HOME && keys[K_CTRL].down ) {
		FUNC6();
		return;
	}

	// ctrl-end = bottom of console
	if ( key == K_END && keys[K_CTRL].down ) {
		FUNC3();
		return;
	}

	// pass to the normal editline routine
	FUNC9( &g_consoleField, key );
}