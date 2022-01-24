#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  menuDef_t ;

/* Variables and functions */
 int KEYCATCH_UI ; 
 int K_ESCAPE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9( int key, qboolean down ) {

  if (FUNC0() > 0) {
    menuDef_t *menu = FUNC1();
		if (menu) {
			if (key == K_ESCAPE && down && !FUNC3()) {
				FUNC4();
			} else {
				FUNC2(menu, key, down );
			}
		} else {
			FUNC8( FUNC7() & ~KEYCATCH_UI );
			FUNC6();
			FUNC5( "cl_paused", "0" );
		}
  }

  //if ((s > 0) && (s != menu_null_sound)) {
	//  trap_S_StartLocalSound( s, CHAN_LOCAL_SOUND );
  //}
}