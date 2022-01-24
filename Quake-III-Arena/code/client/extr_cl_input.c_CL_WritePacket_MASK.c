#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_20__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_10__ ;

/* Type definitions */
struct TYPE_27__ {int /*<<< orphan*/  serverTime; } ;
typedef  TYPE_3__ usercmd_t ;
typedef  int /*<<< orphan*/  nullcmd ;
struct TYPE_28__ {int cursize; } ;
typedef  TYPE_4__ msg_t ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_33__ {scalar_t__ integer; } ;
struct TYPE_32__ {int integer; } ;
struct TYPE_31__ {scalar_t__ integer; } ;
struct TYPE_25__ {int outgoingSequence; scalar_t__ unsentFragments; } ;
struct TYPE_30__ {int serverMessageSequence; int serverCommandSequence; int reliableAcknowledge; int reliableSequence; int checksumFeed; TYPE_20__ netchan; int /*<<< orphan*/  lastPacketSentTime; int /*<<< orphan*/ * serverCommands; scalar_t__ demowaiting; int /*<<< orphan*/ * reliableCommands; scalar_t__ demoplaying; } ;
struct TYPE_29__ {scalar_t__ state; int /*<<< orphan*/  realtime; } ;
struct TYPE_26__ {int p_cmdNumber; int /*<<< orphan*/  p_serverTime; int /*<<< orphan*/  p_realtime; } ;
struct TYPE_24__ {int messageNum; int /*<<< orphan*/  valid; } ;
struct TYPE_23__ {int serverId; int cmdNumber; TYPE_2__* outPackets; TYPE_3__* cmds; TYPE_1__ snap; } ;

/* Variables and functions */
 scalar_t__ CA_CINEMATIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_20__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_20__*) ; 
 int CMD_MASK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int MAX_MSGLEN ; 
 int MAX_PACKET_USERCMDS ; 
 int MAX_RELIABLE_COMMANDS ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int PACKET_MASK ; 
 TYPE_10__ cl ; 
 TYPE_9__* cl_nodelta ; 
 TYPE_8__* cl_packetdup ; 
 TYPE_7__* cl_showSend ; 
 TYPE_6__ clc ; 
 int clc_clientCommand ; 
 int clc_move ; 
 int clc_moveNoDelta ; 
 TYPE_5__ cls ; 

void FUNC13( void ) {
	msg_t		buf;
	byte		data[MAX_MSGLEN];
	int			i, j;
	usercmd_t	*cmd, *oldcmd;
	usercmd_t	nullcmd;
	int			packetNum;
	int			oldPacketNum;
	int			count, key;

	// don't send anything if playing back a demo
	if ( clc.demoplaying || cls.state == CA_CINEMATIC ) {
		return;
	}

	FUNC4( &nullcmd, 0, sizeof(nullcmd) );
	oldcmd = &nullcmd;

	FUNC8( &buf, data, sizeof(data) );

	FUNC7( &buf );
	// write the current serverId so the server
	// can tell if this is from the current gameState
	FUNC11( &buf, cl.serverId );

	// write the last message we received, which can
	// be used for delta compression, and is also used
	// to tell if we dropped a gamestate
	FUNC11( &buf, clc.serverMessageSequence );

	// write the last reliable message we received
	FUNC11( &buf, clc.serverCommandSequence );

	// write any unacknowledged clientCommands
	for ( i = clc.reliableAcknowledge + 1 ; i <= clc.reliableSequence ; i++ ) {
		FUNC9( &buf, clc_clientCommand );
		FUNC11( &buf, i );
		FUNC12( &buf, clc.reliableCommands[ i & (MAX_RELIABLE_COMMANDS-1) ] );
	}

	// we want to send all the usercmds that were generated in the last
	// few packet, so even if a couple packets are dropped in a row,
	// all the cmds will make it to the server
	if ( cl_packetdup->integer < 0 ) {
		FUNC6( "cl_packetdup", "0" );
	} else if ( cl_packetdup->integer > 5 ) {
		FUNC6( "cl_packetdup", "5" );
	}
	oldPacketNum = (clc.netchan.outgoingSequence - 1 - cl_packetdup->integer) & PACKET_MASK;
	count = cl.cmdNumber - cl.outPackets[ oldPacketNum ].p_cmdNumber;
	if ( count > MAX_PACKET_USERCMDS ) {
		count = MAX_PACKET_USERCMDS;
		FUNC5("MAX_PACKET_USERCMDS\n");
	}
	if ( count >= 1 ) {
		if ( cl_showSend->integer ) {
			FUNC5( "(%i)", count );
		}

		// begin a client move command
		if ( cl_nodelta->integer || !cl.snap.valid || clc.demowaiting
			|| clc.serverMessageSequence != cl.snap.messageNum ) {
			FUNC9 (&buf, clc_moveNoDelta);
		} else {
			FUNC9 (&buf, clc_move);
		}

		// write the command count
		FUNC9( &buf, count );

		// use the checksum feed in the key
		key = clc.checksumFeed;
		// also use the message acknowledge
		key ^= clc.serverMessageSequence;
		// also use the last acknowledged server command in the key
		key ^= FUNC3(clc.serverCommands[ clc.serverCommandSequence & (MAX_RELIABLE_COMMANDS-1) ], 32);

		// write all the commands, including the predicted command
		for ( i = 0 ; i < count ; i++ ) {
			j = (cl.cmdNumber - count + i + 1) & CMD_MASK;
			cmd = &cl.cmds[j];
			FUNC10 (&buf, key, oldcmd, cmd);
			oldcmd = cmd;
		}
	}

	//
	// deliver the message
	//
	packetNum = clc.netchan.outgoingSequence & PACKET_MASK;
	cl.outPackets[ packetNum ].p_realtime = cls.realtime;
	cl.outPackets[ packetNum ].p_serverTime = oldcmd->serverTime;
	cl.outPackets[ packetNum ].p_cmdNumber = cl.cmdNumber;
	clc.lastPacketSentTime = cls.realtime;

	if ( cl_showSend->integer ) {
		FUNC5( "%i ", buf.cursize );
	}

	FUNC0 (&clc.netchan, &buf);	

	// clients never really should have messages large enough
	// to fragment, but in case they do, fire them all off
	// at once
	// TTimo: this causes a packet burst, which is bad karma for winsock
	// added a WARNING message, we'll see if there are legit situations where this happens
	while ( clc.netchan.unsentFragments ) {
		FUNC2( "WARNING: #462 unsent fragments (not supposed to happen!)\n" );
		FUNC1( &clc.netchan );
	}
}