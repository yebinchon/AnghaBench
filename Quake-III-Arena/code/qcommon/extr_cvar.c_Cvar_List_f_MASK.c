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
struct TYPE_3__ {int flags; int /*<<< orphan*/  string; int /*<<< orphan*/  name; struct TYPE_3__* next; } ;
typedef  TYPE_1__ cvar_t ;

/* Variables and functions */
 int CVAR_ARCHIVE ; 
 int CVAR_CHEAT ; 
 int CVAR_INIT ; 
 int CVAR_LATCH ; 
 int CVAR_ROM ; 
 int CVAR_SERVERINFO ; 
 int CVAR_USERINFO ; 
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int cvar_numIndexes ; 
 TYPE_1__* cvar_vars ; 
 int /*<<< orphan*/  qfalse ; 

void FUNC4( void ) {
	cvar_t	*var;
	int		i;
	char	*match;

	if ( FUNC0() > 1 ) {
		match = FUNC1( 1 );
	} else {
		match = NULL;
	}

	i = 0;
	for (var = cvar_vars ; var ; var = var->next, i++)
	{
		if (match && !FUNC2(match, var->name, qfalse)) continue;

		if (var->flags & CVAR_SERVERINFO) {
			FUNC3("S");
		} else {
			FUNC3(" ");
		}
		if (var->flags & CVAR_USERINFO) {
			FUNC3("U");
		} else {
			FUNC3(" ");
		}
		if (var->flags & CVAR_ROM) {
			FUNC3("R");
		} else {
			FUNC3(" ");
		}
		if (var->flags & CVAR_INIT) {
			FUNC3("I");
		} else {
			FUNC3(" ");
		}
		if (var->flags & CVAR_ARCHIVE) {
			FUNC3("A");
		} else {
			FUNC3(" ");
		}
		if (var->flags & CVAR_LATCH) {
			FUNC3("L");
		} else {
			FUNC3(" ");
		}
		if (var->flags & CVAR_CHEAT) {
			FUNC3("C");
		} else {
			FUNC3(" ");
		}

		FUNC3 (" %s \"%s\"\n", var->name, var->string);
	}

	FUNC3 ("\n%i total cvars\n", i);
	FUNC3 ("%i cvar indexes\n", cvar_numIndexes);
}