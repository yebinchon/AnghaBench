#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  data; int /*<<< orphan*/  cursize; } ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_6__ msg; } ;
typedef  TYPE_1__ netchan_buffer_t ;
struct TYPE_12__ {int /*<<< orphan*/  unsentFragments; } ;
struct TYPE_10__ {TYPE_1__* netchan_start_queue; TYPE_1__** netchan_end_queue; TYPE_7__ netchan; } ;
typedef  TYPE_2__ client_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6( client_t *client ) {
	FUNC3( &client->netchan );
	if (!client->netchan.unsentFragments)
	{
		// make sure the netchan queue has been properly initialized (you never know)
		if (!client->netchan_end_queue) {
			FUNC1(ERR_DROP, "netchan queue is not properly initialized in SV_Netchan_TransmitNextFragment\n");
		}
		// the last fragment was transmitted, check wether we have queued messages
		if (client->netchan_start_queue) {
			netchan_buffer_t *netbuf;
			FUNC0("#462 Netchan_TransmitNextFragment: popping a queued message for transmit\n");
			netbuf = client->netchan_start_queue;
			FUNC4( client, &netbuf->msg );
			FUNC2( &client->netchan, netbuf->msg.cursize, netbuf->msg.data );
			// pop from queue
			client->netchan_start_queue = netbuf->next;
			if (!client->netchan_start_queue) {
				FUNC0("#462 Netchan_TransmitNextFragment: emptied queue\n");
				client->netchan_end_queue = &client->netchan_start_queue;
			}
			else
				FUNC0("#462 Netchan_TransmitNextFragment: remaining queued message\n");
			FUNC5(netbuf);
		} 
	}	
}