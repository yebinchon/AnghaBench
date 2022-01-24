#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct necp_session {int dummy; } ;
typedef  int /*<<< orphan*/  mbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NECP_PACKET_TYPE_POLICY_APPLY_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct necp_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct necp_session *session, u_int32_t message_id, mbuf_t packet, int offset)
{
#pragma unused(packet, offset)
	FUNC0(session);
	FUNC1(session, NECP_PACKET_TYPE_POLICY_APPLY_ALL, message_id);
}