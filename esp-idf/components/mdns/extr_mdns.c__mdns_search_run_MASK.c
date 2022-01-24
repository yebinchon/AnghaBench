#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ started_at; scalar_t__ timeout; scalar_t__ sent_at; struct TYPE_4__* next; } ;
typedef  TYPE_1__ mdns_search_once_t ;
struct TYPE_5__ {TYPE_1__* search_once; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_SEARCH_END ; 
 int /*<<< orphan*/  ACTION_SEARCH_SEND ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ SEARCH_INIT ; 
 scalar_t__ SEARCH_OFF ; 
 void* SEARCH_RUNNING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_2__* _mdns_server ; 
 scalar_t__ portTICK_PERIOD_MS ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
    FUNC0();
    mdns_search_once_t * s = _mdns_server->search_once;
    uint32_t now = FUNC3() * portTICK_PERIOD_MS;
    if (!s) {
        FUNC1();
        return;
    }
    while (s) {
        if (s->state != SEARCH_OFF) {
            if (now > (s->started_at + s->timeout)) {
                s->state = SEARCH_OFF;
                if (FUNC2(ACTION_SEARCH_END, s) != ESP_OK) {
                    s->state = SEARCH_RUNNING;
                }
            } else if (s->state == SEARCH_INIT || (now - s->sent_at) > 1000) {
                s->state = SEARCH_RUNNING;
                s->sent_at = now;
                if (FUNC2(ACTION_SEARCH_SEND, s) != ESP_OK) {
                    s->sent_at -= 1000;
                }
            }
        }
        s = s->next;
    }
    FUNC1();
}