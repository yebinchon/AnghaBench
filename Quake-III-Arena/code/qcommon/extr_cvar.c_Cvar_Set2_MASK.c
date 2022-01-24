#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_6__ {char* resetString; int flags; int /*<<< orphan*/ * string; int /*<<< orphan*/  integer; int /*<<< orphan*/  value; int /*<<< orphan*/  modificationCount; void* modified; int /*<<< orphan*/ * latchedString; } ;
typedef  TYPE_1__ cvar_t ;
struct TYPE_7__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int CVAR_CHEAT ; 
 int CVAR_INIT ; 
 int CVAR_LATCH ; 
 int CVAR_ROM ; 
 int /*<<< orphan*/  CVAR_USER_CREATED ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 void* FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (char const*) ; 
 TYPE_1__* FUNC4 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* cvar_cheats ; 
 int cvar_modifiedFlags ; 
 void* qtrue ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 char* var_value ; 

cvar_t *FUNC10( const char *var_name, const char *value, qboolean force ) {
	cvar_t	*var;

	FUNC0( "Cvar_Set2: %s %s\n", var_name, value );

	if ( !FUNC5( var_name ) ) {
		FUNC1("invalid cvar name string: %s\n", var_name );
		var_name = "BADNAME";
	}

#if 0	// FIXME
	if ( value && !Cvar_ValidateString( value ) ) {
		Com_Printf("invalid cvar value string: %s\n", value );
		var_value = "BADVALUE";
	}
#endif

	var = FUNC3 (var_name);
	if (!var) {
		if ( !value ) {
			return NULL;
		}
		// create it
		if ( !force ) {
			return FUNC4( var_name, value, CVAR_USER_CREATED );
		} else {
			return FUNC4 (var_name, value, 0);
		}
	}

	if (!value ) {
		value = var->resetString;
	}

	if (!FUNC9(value,var->string)) {
		return var;
	}
	// note what types of cvars have been modified (userinfo, archive, serverinfo, systeminfo)
	cvar_modifiedFlags |= var->flags;

	if (!force)
	{
		if (var->flags & CVAR_ROM)
		{
			FUNC1 ("%s is read only.\n", var_name);
			return var;
		}

		if (var->flags & CVAR_INIT)
		{
			FUNC1 ("%s is write protected.\n", var_name);
			return var;
		}

		if (var->flags & CVAR_LATCH)
		{
			if (var->latchedString)
			{
				if (FUNC9(value, var->latchedString) == 0)
					return var;
				FUNC6 (var->latchedString);
			}
			else
			{
				if (FUNC9(value, var->string) == 0)
					return var;
			}

			FUNC1 ("%s will be changed upon restarting.\n", var_name);
			var->latchedString = FUNC2(value);
			var->modified = qtrue;
			var->modificationCount++;
			return var;
		}

		if ( (var->flags & CVAR_CHEAT) && !cvar_cheats->integer )
		{
			FUNC1 ("%s is cheat protected.\n", var_name);
			return var;
		}

	}
	else
	{
		if (var->latchedString)
		{
			FUNC6 (var->latchedString);
			var->latchedString = NULL;
		}
	}

	if (!FUNC9(value, var->string))
		return var;		// not changed

	var->modified = qtrue;
	var->modificationCount++;
	
	FUNC6 (var->string);	// free the old value string
	
	var->string = FUNC2(value);
	var->value = FUNC7 (var->string);
	var->integer = FUNC8 (var->string);

	return var;
}