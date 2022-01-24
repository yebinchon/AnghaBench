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
struct TYPE_2__ {int id; } ;
typedef  TYPE_1__ menucommon_s ;

/* Variables and functions */
#define  ID_OK 135 
#define  QGR_STATUS_BAD_PASSWORD 134 
#define  QGR_STATUS_ERROR 133 
#define  QGR_STATUS_INVALIDUSER 132 
#define  QGR_STATUS_NO_MEMBERSHIP 131 
#define  QGR_STATUS_NO_USER 130 
#define  QGR_STATUS_TIMEOUT 129 
#define  QGR_STATUS_USER_EXISTS 128 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  s_status ; 

__attribute__((used)) static void FUNC4( void* ptr, int event ) {
	if( event != QM_ACTIVATED ) {
		return;
	}

	switch( ((menucommon_s*)ptr)->id ) {
	case ID_OK:
		FUNC1();
		
		switch( s_status )
		{
		case QGR_STATUS_NO_USER:
			FUNC2();
			break;
		case QGR_STATUS_BAD_PASSWORD:
			FUNC2();
			FUNC0();
			break;
		case QGR_STATUS_USER_EXISTS:
			FUNC2();
			FUNC3();
			break;
		case QGR_STATUS_NO_MEMBERSHIP:
			FUNC2();
			break;
		case QGR_STATUS_TIMEOUT:
			FUNC2();
			break;
		case QGR_STATUS_INVALIDUSER:
			FUNC2();
			break;
		case QGR_STATUS_ERROR:
			FUNC2();
			break;
		default:
			break;
		}

		break;
	}
}