#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int id; } ;
typedef  TYPE_3__ menucommon_s ;
struct TYPE_6__ {int curvalue; } ;
struct TYPE_5__ {float curvalue; } ;
struct TYPE_8__ {TYPE_2__ screensize; TYPE_1__ brightness; } ;

/* Variables and functions */
#define  ID_BACK 134 
#define  ID_BRIGHTNESS 133 
#define  ID_DISPLAY 132 
#define  ID_GRAPHICS 131 
#define  ID_NETWORK 130 
#define  ID_SCREENSIZE 129 
#define  ID_SOUND 128 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_4__ displayOptionsInfo ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void FUNC5( void* ptr, int event ) {
	if( event != QM_ACTIVATED ) {
		return;
	}

	switch( ((menucommon_s*)ptr)->id ) {
	case ID_GRAPHICS:
		FUNC2();
		FUNC0();
		break;

	case ID_DISPLAY:
		break;

	case ID_SOUND:
		FUNC2();
		FUNC3();
		break;

	case ID_NETWORK:
		FUNC2();
		FUNC1();
		break;

	case ID_BRIGHTNESS:
		FUNC4( "r_gamma", displayOptionsInfo.brightness.curvalue / 10.0f );
		break;
	
	case ID_SCREENSIZE:
		FUNC4( "cg_viewsize", displayOptionsInfo.screensize.curvalue * 10 );
		break;

	case ID_BACK:
		FUNC2();
		break;
	}
}