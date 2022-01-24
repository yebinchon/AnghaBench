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
struct TYPE_5__ {int /*<<< orphan*/ * buffer; } ;
struct TYPE_6__ {TYPE_1__ field; } ;
struct TYPE_8__ {TYPE_2__ cdkey; } ;

/* Variables and functions */
#define  ID_ACCEPT 129 
#define  ID_BACK 128 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_4__ cdkeyMenuInfo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2( void *ptr, int event ) {
	if( event != QM_ACTIVATED ) {
		return;
	}

	switch( ((menucommon_s*)ptr)->id ) {
	case ID_ACCEPT:
		if( cdkeyMenuInfo.cdkey.field.buffer[0] ) {
			FUNC1( cdkeyMenuInfo.cdkey.field.buffer );
		}
		FUNC0();
		break;

	case ID_BACK:
		FUNC0();
		break;
	}
}