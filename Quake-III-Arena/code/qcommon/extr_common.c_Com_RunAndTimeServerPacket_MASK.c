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
typedef  int /*<<< orphan*/  netadr_t ;
typedef  int /*<<< orphan*/  msg_t ;
struct TYPE_2__ {int integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 TYPE_1__* com_speeds ; 

void FUNC3( netadr_t *evFrom, msg_t *buf ) {
	int		t1, t2, msec;

	t1 = 0;

	if ( com_speeds->integer ) {
		t1 = FUNC2 ();
	}

	FUNC1( *evFrom, buf );

	if ( com_speeds->integer ) {
		t2 = FUNC2 ();
		msec = t2 - t1;
		if ( com_speeds->integer == 3 ) {
			FUNC0( "SV_PacketEvent time: %i\n", msec );
		}
	}
}