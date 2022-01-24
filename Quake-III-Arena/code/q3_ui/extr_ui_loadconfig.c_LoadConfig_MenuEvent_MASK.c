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
struct TYPE_4__ {int id; } ;
typedef  TYPE_1__ menucommon_s ;
struct TYPE_6__ {size_t curvalue; int /*<<< orphan*/ * itemnames; } ;
struct TYPE_5__ {TYPE_3__ list; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_APPEND ; 
#define  ID_BACK 131 
#define  ID_GO 130 
#define  ID_LEFT 129 
#define  ID_RIGHT 128 
 int /*<<< orphan*/  K_LEFTARROW ; 
 int /*<<< orphan*/  K_RIGHTARROW ; 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ s_configs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( void *ptr, int event ) {
	if( event != QM_ACTIVATED ) {
		return;
	}

	switch ( ((menucommon_s*)ptr)->id ) {
	case ID_GO:
		FUNC2( EXEC_APPEND, FUNC3( "exec %s\n", s_configs.list.itemnames[s_configs.list.curvalue] ) );
		FUNC1();
		break;

	case ID_BACK:
		FUNC1();
		break;

	case ID_LEFT:
		FUNC0( &s_configs.list, K_LEFTARROW );
		break;

	case ID_RIGHT:
		FUNC0( &s_configs.list, K_RIGHTARROW );
		break;
	}
}