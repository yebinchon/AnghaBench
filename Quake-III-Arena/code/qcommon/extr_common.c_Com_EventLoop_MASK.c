#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int evType; int evTime; scalar_t__ evPtr; int /*<<< orphan*/  evPtrLength; int /*<<< orphan*/  evValue2; int /*<<< orphan*/  evValue; } ;
typedef  TYPE_1__ sysEvent_t ;
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_11__ {unsigned int maxsize; int /*<<< orphan*/  cursize; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ msg_t ;
typedef  int /*<<< orphan*/  evFrom ;
typedef  int /*<<< orphan*/  byte ;
typedef  int /*<<< orphan*/  bufData ;
struct TYPE_13__ {int /*<<< orphan*/  value; } ;
struct TYPE_12__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int MAX_MSGLEN ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  NS_CLIENT ; 
 int /*<<< orphan*/  NS_SERVER ; 
 int /*<<< orphan*/  FUNC13 (int*) ; 
#define  SE_CHAR 134 
#define  SE_CONSOLE 133 
#define  SE_JOYSTICK_AXIS 132 
#define  SE_KEY 131 
#define  SE_MOUSE 130 
#define  SE_NONE 129 
#define  SE_PACKET 128 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 TYPE_4__* com_dropsim ; 
 TYPE_3__* com_sv_running ; 

int FUNC15( void ) {
	sysEvent_t	ev;
	netadr_t	evFrom;
	byte		bufData[MAX_MSGLEN];
	msg_t		buf;

	FUNC11( &buf, bufData, sizeof( bufData ) );

	while ( 1 ) {
		ev = FUNC7();

		// if no more events are available
		if ( ev.evType == SE_NONE ) {
			// manually send packet events for the loopback channel
			while ( FUNC12( NS_CLIENT, &evFrom, &buf ) ) {
				FUNC4( evFrom, &buf );
			}

			while ( FUNC12( NS_SERVER, &evFrom, &buf ) ) {
				// if the server just shut down, flush the events
				if ( com_sv_running->integer ) {
					FUNC10( &evFrom, &buf );
				}
			}

			return ev.evTime;
		}


		switch ( ev.evType ) {
		default:
		  // bk001129 - was ev.evTime
			FUNC6( ERR_FATAL, "Com_EventLoop: bad event type %i", ev.evType );
			break;
        case SE_NONE:
            break;
		case SE_KEY:
			FUNC2( ev.evValue, ev.evValue2, ev.evTime );
			break;
		case SE_CHAR:
			FUNC0( ev.evValue );
			break;
		case SE_MOUSE:
			FUNC3( ev.evValue, ev.evValue2, ev.evTime );
			break;
		case SE_JOYSTICK_AXIS:
			FUNC1( ev.evValue, ev.evValue2, ev.evTime );
			break;
		case SE_CONSOLE:
			FUNC5( (char *)ev.evPtr );
			FUNC5( "\n" );
			break;
		case SE_PACKET:
			// this cvar allows simulation of connections that
			// drop a lot of packets.  Note that loopback connections
			// don't go through here at all.
			if ( com_dropsim->value > 0 ) {
				static int seed;

				if ( FUNC13( &seed ) < com_dropsim->value ) {
					break;		// drop this packet
				}
			}

			evFrom = *(netadr_t *)ev.evPtr;
			buf.cursize = ev.evPtrLength - sizeof( evFrom );

			// we must copy the contents of the message out, because
			// the event buffers are only large enough to hold the
			// exact payload, but channel messages need to be large
			// enough to hold fragment reassembly
			if ( (unsigned)buf.cursize > buf.maxsize ) {
				FUNC9("Com_EventLoop: oversize packet\n");
				continue;
			}
			FUNC8( buf.data, (byte *)((netadr_t *)ev.evPtr + 1), buf.cursize );
			if ( com_sv_running->integer ) {
				FUNC10( &evFrom, &buf );
			} else {
				FUNC4( evFrom, &buf );
			}
			break;
		}

		// free any block data
		if ( ev.evPtr ) {
			FUNC14( ev.evPtr );
		}
	}

	return 0;	// never reached
}