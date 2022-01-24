#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_6__ {scalar_t__ demoplaying; } ;
struct TYPE_5__ {scalar_t__ state; int keyCatchers; } ;
struct TYPE_4__ {int repeats; char* binding; scalar_t__ down; } ;

/* Variables and functions */
 scalar_t__ CA_ACTIVE ; 
 scalar_t__ CA_CINEMATIC ; 
 scalar_t__ CA_DISCONNECTED ; 
 int /*<<< orphan*/  CGAME_EVENT_NONE ; 
 int /*<<< orphan*/  CG_EVENT_HANDLING ; 
 int /*<<< orphan*/  CG_KEY_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  EXEC_APPEND ; 
 int KEYCATCH_CGAME ; 
 int KEYCATCH_CONSOLE ; 
 int KEYCATCH_MESSAGE ; 
 int KEYCATCH_UI ; 
 size_t K_ALT ; 
 int K_ENTER ; 
 int K_ESCAPE ; 
 int K_MOUSE1 ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  UIMENU_INGAME ; 
 int /*<<< orphan*/  UIMENU_MAIN ; 
 int /*<<< orphan*/  UI_KEY_EVENT ; 
 int /*<<< orphan*/  UI_SET_ACTIVE_MENU ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int,...) ; 
 scalar_t__ anykeydown ; 
 scalar_t__ cgvm ; 
 TYPE_3__ clc ; 
 TYPE_2__ cls ; 
 TYPE_1__* keys ; 
 scalar_t__ uivm ; 

void FUNC15 (int key, qboolean down, unsigned time) {
	char	*kb;
	char	cmd[1024];

	// update auto-repeat status and BUTTON_ANY status
	keys[key].down = down;

	if (down) {
		keys[key].repeats++;
		if ( keys[key].repeats == 1) {
			anykeydown++;
		}
	} else {
		keys[key].repeats = 0;
		anykeydown--;
		if (anykeydown < 0) {
			anykeydown = 0;
		}
	}

#ifdef __linux__
  if (key == K_ENTER)
  {
    if (down)
    {
      if (keys[K_ALT].down)
      {
        FUNC10();
        if (FUNC9("r_fullscreen") == 0)
        {
          FUNC4("Switching to fullscreen rendering\n");
          FUNC8("r_fullscreen", "1");
        }
        else
        {
          FUNC4("Switching to windowed rendering\n");
          FUNC8("r_fullscreen", "0");
        }
        FUNC3( EXEC_APPEND, "vid_restart\n");
        return;
      }
    }
  }
#endif

	// console key is hardcoded, so the user can never unbind it
	if (key == '`' || key == '~') {
		if (!down) {
			return;
		}
    FUNC6 ();
		return;
	}


	// keys can still be used for bound actions
	if ( down && ( key < 128 || key == K_MOUSE1 ) && ( clc.demoplaying || cls.state == CA_CINEMATIC ) && !cls.keyCatchers) {

		if (FUNC9 ("com_cameraMode") == 0) {
			FUNC8 ("nextdemo","");
			key = K_ESCAPE;
		}
	}


	// escape is always handled special
	if ( key == K_ESCAPE && down ) {
		if ( cls.keyCatchers & KEYCATCH_MESSAGE ) {
			// clear message mode
			FUNC12( key );
			return;
		}

		// escape always gets out of CGAME stuff
		if (cls.keyCatchers & KEYCATCH_CGAME) {
			cls.keyCatchers &= ~KEYCATCH_CGAME;
			FUNC14 (cgvm, CG_EVENT_HANDLING, CGAME_EVENT_NONE);
			return;
		}

		if ( !( cls.keyCatchers & KEYCATCH_UI ) ) {
			if ( cls.state == CA_ACTIVE && !clc.demoplaying ) {
				FUNC14( uivm, UI_SET_ACTIVE_MENU, UIMENU_INGAME );
			}
			else {
				FUNC1();
				FUNC13();
				FUNC14( uivm, UI_SET_ACTIVE_MENU, UIMENU_MAIN );
			}
			return;
		}

		FUNC14( uivm, UI_KEY_EVENT, key, down );
		return;
	}

	//
	// key up events only perform actions if the game key binding is
	// a button command (leading + sign).  These will be processed even in
	// console mode and menu mode, to keep the character from continuing 
	// an action started before a mode switch.
	//
	if (!down) {
		kb = keys[key].binding;

		FUNC0( key, kb );

		if ( cls.keyCatchers & KEYCATCH_UI && uivm ) {
			FUNC14( uivm, UI_KEY_EVENT, key, down );
		} else if ( cls.keyCatchers & KEYCATCH_CGAME && cgvm ) {
			FUNC14( cgvm, CG_KEY_EVENT, key, down );
		} 

		return;
	}


	// distribute the key down event to the apropriate handler
	if ( cls.keyCatchers & KEYCATCH_CONSOLE ) {
		FUNC7( key );
	} else if ( cls.keyCatchers & KEYCATCH_UI ) {
		if ( uivm ) {
			FUNC14( uivm, UI_KEY_EVENT, key, down );
		} 
	} else if ( cls.keyCatchers & KEYCATCH_CGAME ) {
		if ( cgvm ) {
			FUNC14( cgvm, CG_KEY_EVENT, key, down );
		} 
	} else if ( cls.keyCatchers & KEYCATCH_MESSAGE ) {
		FUNC12( key );
	} else if ( cls.state == CA_DISCONNECTED ) {
		FUNC7( key );
	} else {
		// send the bound action
		kb = keys[key].binding;
		if ( !kb ) {
			if (key >= 200) {
				FUNC4 ("%s is unbound, use controls menu to set.\n"
					, FUNC11( key ) );
			}
		} else if (kb[0] == '+') {	
			int i;
			char button[1024], *buttonPtr;
			buttonPtr = button;
			for ( i = 0; ; i++ ) {
				if ( kb[i] == ';' || !kb[i] ) {
					*buttonPtr = '\0';
					if ( button[0] == '+') {
						// button commands add keynum and time as parms so that multiple
						// sources can be discriminated and subframe corrected
						FUNC5 (cmd, sizeof(cmd), "%s %i %i\n", button, key, time);
						FUNC2 (cmd);
					} else {
						// down-only command
						FUNC2 (button);
						FUNC2 ("\n");
					}
					buttonPtr = button;
					while ( (kb[i] <= ' ' || kb[i] == ';') && kb[i] != 0 ) {
						i++;
					}
				}
				*buttonPtr++ = kb[i];
				if ( !kb[i] ) {
					break;
				}
			}
		} else {
			// down-only command
			FUNC2 (kb);
			FUNC2 ("\n");
		}
	}
}