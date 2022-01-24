#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  var ;
struct TYPE_4__ {int flags; struct TYPE_4__* next; scalar_t__ resetString; scalar_t__ name; scalar_t__ latchedString; scalar_t__ string; } ;
typedef  TYPE_1__ cvar_t ;

/* Variables and functions */
 int CVAR_INIT ; 
 int CVAR_NORESTART ; 
 int CVAR_ROM ; 
 int CVAR_USER_CREATED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__* cvar_vars ; 

void FUNC3( void ) {
	cvar_t	*var;
	cvar_t	**prev;

	prev = &cvar_vars;
	while ( 1 ) {
		var = *prev;
		if ( !var ) {
			break;
		}

		// don't mess with rom values, or some inter-module
		// communication will get broken (com_cl_running, etc)
		if ( var->flags & ( CVAR_ROM | CVAR_INIT | CVAR_NORESTART ) ) {
			prev = &var->next;
			continue;
		}

		// throw out any variables the user created
		if ( var->flags & CVAR_USER_CREATED ) {
			*prev = var->next;
			if ( var->name ) {
				FUNC2( var->name );
			}
			if ( var->string ) {
				FUNC2( var->string );
			}
			if ( var->latchedString ) {
				FUNC2( var->latchedString );
			}
			if ( var->resetString ) {
				FUNC2( var->resetString );
			}
			// clear the var completely, since we
			// can't remove the index from the list
			FUNC0( var, 0, sizeof( var ) );
			continue;
		}

		FUNC1( var->name, var->resetString );

		prev = &var->next;
	}
}