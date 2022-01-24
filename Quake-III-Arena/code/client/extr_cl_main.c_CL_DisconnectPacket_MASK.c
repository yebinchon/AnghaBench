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
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_4__ {int /*<<< orphan*/  remoteAddress; } ;
struct TYPE_6__ {int lastPacketTime; TYPE_1__ netchan; } ;
struct TYPE_5__ {scalar_t__ state; int realtime; } ;

/* Variables and functions */
 scalar_t__ CA_AUTHORIZING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ clc ; 
 TYPE_2__ cls ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC4( netadr_t from ) {
	if ( cls.state < CA_AUTHORIZING ) {
		return;
	}

	// if not from our server, ignore it
	if ( !FUNC3( from, clc.netchan.remoteAddress ) ) {
		return;
	}

	// if we have received packets within three seconds, ignore it
	// (it might be a malicious spoof)
	if ( cls.realtime - clc.lastPacketTime < 3000 ) {
		return;
	}

	// drop the connection
	FUNC1( "Server disconnected for unknown reason\n" );
	FUNC2("com_errorMessage", "Server disconnected for unknown reason\n" );
	FUNC0( qtrue );
}