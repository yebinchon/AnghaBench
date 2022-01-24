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
struct TYPE_2__ {int /*<<< orphan*/  uiStarted; int /*<<< orphan*/  keyCatchers; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEYCATCH_UI ; 
 int /*<<< orphan*/  UI_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ cls ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/ * uivm ; 

void FUNC2( void ) {
	cls.keyCatchers &= ~KEYCATCH_UI;
	cls.uiStarted = qfalse;
	if ( !uivm ) {
		return;
	}
	FUNC0( uivm, UI_SHUTDOWN );
	FUNC1( uivm );
	uivm = NULL;
}