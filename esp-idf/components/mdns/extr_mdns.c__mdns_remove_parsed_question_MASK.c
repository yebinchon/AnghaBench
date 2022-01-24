#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  mdns_srv_item_t ;
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* domain; struct TYPE_6__* proto; struct TYPE_6__* service; struct TYPE_6__* host; } ;
typedef  TYPE_1__ mdns_parsed_question_t ;
struct TYPE_7__ {TYPE_1__* questions; } ;
typedef  TYPE_2__ mdns_parsed_packet_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(mdns_parsed_packet_t * parsed_packet, uint16_t type, mdns_srv_item_t * service)
{
    mdns_parsed_question_t * q = parsed_packet->questions;

    if (FUNC0(q, type, service)) {
        parsed_packet->questions = q->next;
        FUNC1(q->host);
        FUNC1(q->service);
        FUNC1(q->proto);
        FUNC1(q->domain);
        FUNC1(q);
        return;
    }

    while (q->next) {
        mdns_parsed_question_t * p = q->next;
        if (FUNC0(p, type, service)) {
            q->next = p->next;
            FUNC1(p->host);
            FUNC1(p->service);
            FUNC1(p->proto);
            FUNC1(p->domain);
            FUNC1(p);
            return;
        }
        q = q->next;
    }
}