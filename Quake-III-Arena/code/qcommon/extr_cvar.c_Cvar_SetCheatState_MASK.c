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
struct TYPE_3__ {int flags; int /*<<< orphan*/  resetString; int /*<<< orphan*/  name; int /*<<< orphan*/  string; int /*<<< orphan*/ * latchedString; struct TYPE_3__* next; } ;
typedef  TYPE_1__ cvar_t ;

/* Variables and functions */
 int CVAR_CHEAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* cvar_vars ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3( void ) {
	cvar_t	*var;

	// set all default vars to the safe value
	for ( var = cvar_vars ; var ; var = var->next ) {
		if ( var->flags & CVAR_CHEAT ) {
      // the CVAR_LATCHED|CVAR_CHEAT vars might escape the reset here 
      // because of a different var->latchedString
      if (var->latchedString)
      {
        FUNC1(var->latchedString);
        var->latchedString = NULL;
      }
			if (FUNC2(var->resetString,var->string)) {
        FUNC0( var->name, var->resetString );
			}
		}
	}
}