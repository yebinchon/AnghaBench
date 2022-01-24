#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_10__ {int cursize; int readcount; scalar_t__ data; } ;
typedef  TYPE_1__ msg_t ;
struct TYPE_13__ {int /*<<< orphan*/  remoteAddress; } ;
struct TYPE_12__ {int /*<<< orphan*/  demowaiting; scalar_t__ demorecording; int /*<<< orphan*/  lastPacketTime; int /*<<< orphan*/  serverMessageSequence; TYPE_7__ netchan; } ;
struct TYPE_11__ {scalar_t__ state; int /*<<< orphan*/  realtime; } ;

/* Variables and functions */
 scalar_t__ CA_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ clc ; 
 TYPE_2__ cls ; 

void FUNC9( netadr_t from, msg_t *msg ) {
	int		headerBytes;

	clc.lastPacketTime = cls.realtime;

	if ( msg->cursize >= 4 && *(int *)msg->data == -1 ) {
		FUNC0( from, msg );
		return;
	}

	if ( cls.state < CA_CONNECTED ) {
		return;		// can't be a valid sequenced packet
	}

	if ( msg->cursize < 4 ) {
		FUNC5 ("%s: Runt packet\n",FUNC7( from ));
		return;
	}

	//
	// packet from server
	//
	if ( !FUNC8( from, clc.netchan.remoteAddress ) ) {
		FUNC4 ("%s:sequenced packet without connection\n"
			,FUNC7( from ) );
		// FIXME: send a client disconnect?
		return;
	}

	if (!FUNC1( &clc.netchan, msg) ) {
		return;		// out of order, duplicated, etc
	}

	// the header is different lengths for reliable and unreliable messages
	headerBytes = msg->readcount;

	// track the last message received so it can be returned in 
	// client messages, allowing the server to detect a dropped
	// gamestate
	clc.serverMessageSequence = FUNC6( *(int *)msg->data );

	clc.lastPacketTime = cls.realtime;
	FUNC2( msg );

	//
	// we don't know if it is ok to save a demo message until
	// after we have parsed the frame
	//
	if ( clc.demorecording && !clc.demowaiting ) {
		FUNC3( msg, headerBytes );
	}
}