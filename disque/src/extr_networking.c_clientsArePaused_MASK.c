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
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  client ;
struct TYPE_2__ {int clients_paused; scalar_t__ clients_pause_end_time; scalar_t__ mstime; int /*<<< orphan*/  unblocked_clients; int /*<<< orphan*/  clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ server ; 

int FUNC4(void) {
    if (server.clients_paused && server.clients_pause_end_time < server.mstime) {
        listNode *ln;
        listIter li;
        client *c;

        server.clients_paused = 0;

        /* Put all the clients in the unblocked clients queue in order to
         * force the re-processing of the input buffer if any. */
        FUNC3(server.clients,&li);
        while ((ln = FUNC1(&li)) != NULL) {
            c = FUNC2(ln);
            FUNC0(server.unblocked_clients,c);
        }
    }
    return server.clients_paused;
}