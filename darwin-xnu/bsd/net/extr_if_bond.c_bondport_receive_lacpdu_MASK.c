#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* lacpdu_ref ;
typedef  int /*<<< orphan*/  lacp_actor_partner_tlv_ref ;
typedef  int /*<<< orphan*/ * bondport_ref ;
struct TYPE_6__ {int /*<<< orphan*/  la_actor_tlv; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAEventPacket ; 
 int /*<<< orphan*/  LAEventPortMoved ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void
FUNC4(bondport_ref p, lacpdu_ref in_lacpdu_p)
{
    bondport_ref		moved_port;

    moved_port
	= FUNC3(p, (const lacp_actor_partner_tlv_ref)
				      &in_lacpdu_p->la_actor_tlv);
    if (moved_port != NULL) {
	FUNC2(moved_port, LAEventPortMoved, NULL);
    }
    FUNC2(p, LAEventPacket, in_lacpdu_p);
    FUNC0(p, LAEventPacket, in_lacpdu_p);
    FUNC1(p, LAEventPacket, in_lacpdu_p);
    return;
}