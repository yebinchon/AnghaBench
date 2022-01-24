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
struct TYPE_2__ {int keyCatchers; scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ CA_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int KEYCATCH_CONSOLE ; 
 int KEYCATCH_MESSAGE ; 
 int KEYCATCH_UI ; 
 int K_CHAR_FLAG ; 
 int /*<<< orphan*/  UI_KEY_EVENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chatField ; 
 TYPE_1__ cls ; 
 int /*<<< orphan*/  g_consoleField ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  uivm ; 

void FUNC2( int key ) {
	// the console key should never be used as a char
	if ( key == '`' || key == '~' ) {
		return;
	}

	// distribute the key down event to the apropriate handler
	if ( cls.keyCatchers & KEYCATCH_CONSOLE )
	{
		FUNC0( &g_consoleField, key );
	}
	else if ( cls.keyCatchers & KEYCATCH_UI )
	{
		FUNC1( uivm, UI_KEY_EVENT, key | K_CHAR_FLAG, qtrue );
	}
	else if ( cls.keyCatchers & KEYCATCH_MESSAGE ) 
	{
		FUNC0( &chatField, key );
	}
	else if ( cls.state == CA_DISCONNECTED )
	{
		FUNC0( &g_consoleField, key );
	}
}