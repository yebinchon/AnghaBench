#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  additional; int /*<<< orphan*/  servers; int /*<<< orphan*/  answers; int /*<<< orphan*/  questions; } ;
typedef  TYPE_1__ mdns_tx_packet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  mdns_out_answer_t ; 
 int /*<<< orphan*/  mdns_out_question_t ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(mdns_tx_packet_t * packet)
{
    if (!packet) {
        return;
    }
    FUNC1(mdns_out_question_t, packet->questions);
    FUNC1(mdns_out_answer_t, packet->answers);
    FUNC1(mdns_out_answer_t, packet->servers);
    FUNC1(mdns_out_answer_t, packet->additional);
    FUNC0(packet);
}