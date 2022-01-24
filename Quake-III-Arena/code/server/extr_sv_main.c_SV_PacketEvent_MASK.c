#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_17__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ port; } ;
typedef  TYPE_2__ netadr_t ;
struct TYPE_24__ {int cursize; scalar_t__ data; } ;
typedef  TYPE_3__ msg_t ;
struct TYPE_21__ {scalar_t__ port; } ;
struct TYPE_22__ {int qport; TYPE_17__ remoteAddress; } ;
struct TYPE_25__ {scalar_t__ state; int /*<<< orphan*/  lastPacketTime; TYPE_1__ netchan; } ;
typedef  TYPE_4__ client_t ;
struct TYPE_27__ {int integer; } ;
struct TYPE_26__ {int /*<<< orphan*/  time; TYPE_4__* clients; } ;

/* Variables and functions */
 scalar_t__ CS_FREE ; 
 scalar_t__ CS_ZOMBIE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__,TYPE_17__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__,char*) ; 
 int /*<<< orphan*/  NS_SERVER ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_6__* sv_maxclients ; 
 TYPE_5__ svs ; 

void FUNC9( netadr_t from, msg_t *msg ) {
	int			i;
	client_t	*cl;
	int			qport;

	// check for connectionless packet (0xffffffff) first
	if ( msg->cursize >= 4 && *(int *)msg->data == -1) {
		FUNC6( from, msg );
		return;
	}

	// read the qport out of the message so we can fix up
	// stupid address translating routers
	FUNC1( msg );
	FUNC2( msg );				// sequence number
	qport = FUNC3( msg ) & 0xffff;

	// find which client the message is from
	for (i=0, cl=svs.clients ; i < sv_maxclients->integer ; i++,cl++) {
		if (cl->state == CS_FREE) {
			continue;
		}
		if ( !FUNC4( from, cl->netchan.remoteAddress ) ) {
			continue;
		}
		// it is possible to have multiple clients from a single IP
		// address, so they are differentiated by the qport variable
		if (cl->netchan.qport != qport) {
			continue;
		}

		// the IP port can't be used to differentiate them, because
		// some address translating routers periodically change UDP
		// port assignments
		if (cl->netchan.remoteAddress.port != from.port) {
			FUNC0( "SV_PacketEvent: fixing up a translated port\n" );
			cl->netchan.remoteAddress.port = from.port;
		}

		// make sure it is a valid, in sequence packet
		if (FUNC8(cl, msg)) {
			// zombie clients still need to do the Netchan_Process
			// to make sure they don't need to retransmit the final
			// reliable message, but they don't do any other processing
			if (cl->state != CS_ZOMBIE) {
				cl->lastPacketTime = svs.time;	// don't timeout
				FUNC7( cl, msg );
			}
		}
		return;
	}
	
	// if we received a sequenced packet from an address we don't recognize,
	// send an out of band disconnect packet to it
	FUNC5( NS_SERVER, from, "disconnect" );
}