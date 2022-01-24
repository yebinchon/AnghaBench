#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct TYPE_12__* next; int /*<<< orphan*/  msgBuffer; int /*<<< orphan*/  msg; } ;
typedef  TYPE_1__ netchan_buffer_t ;
struct TYPE_13__ {int /*<<< orphan*/  data; int /*<<< orphan*/  cursize; } ;
typedef  TYPE_2__ msg_t ;
struct TYPE_15__ {scalar_t__ unsentFragments; } ;
struct TYPE_14__ {TYPE_8__ netchan; TYPE_1__** netchan_end_queue; } ;
typedef  TYPE_3__ client_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  svc_EOF ; 

void FUNC7( client_t *client, msg_t *msg) {	//int length, const byte *data ) {
	FUNC2( msg, svc_EOF );
	if (client->netchan.unsentFragments) {
		netchan_buffer_t *netbuf;
		FUNC0("#462 SV_Netchan_Transmit: unsent fragments, stacked\n");
		netbuf = (netchan_buffer_t *)FUNC6(sizeof(netchan_buffer_t));
		// store the msg, we can't store it encoded, as the encoding depends on stuff we still have to finish sending
		FUNC1(&netbuf->msg, netbuf->msgBuffer, sizeof( netbuf->msgBuffer ), msg);
		netbuf->next = NULL;
		// insert it in the queue, the message will be encoded and sent later
		*client->netchan_end_queue = netbuf;
		client->netchan_end_queue = &(*client->netchan_end_queue)->next;
		// emit the next fragment of the current message for now
		FUNC4(&client->netchan);
	} else {
		FUNC5( client, msg );
		FUNC3( &client->netchan, msg->cursize, msg->data );
	}
}