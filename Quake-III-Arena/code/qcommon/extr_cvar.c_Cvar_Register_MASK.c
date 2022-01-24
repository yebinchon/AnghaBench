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
struct TYPE_4__ {int modificationCount; int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ vmCvar_t ;
typedef  int /*<<< orphan*/  cvar_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int cvar_indexes ; 

void	FUNC2( vmCvar_t *vmCvar, const char *varName, const char *defaultValue, int flags ) {
	cvar_t	*cv;

	cv = FUNC0( varName, defaultValue, flags );
	if ( !vmCvar ) {
		return;
	}
	vmCvar->handle = cv - cvar_indexes;
	vmCvar->modificationCount = -1;
	FUNC1( vmCvar );
}