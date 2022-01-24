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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
struct flow_divert_group {int /*<<< orphan*/  lck; int /*<<< orphan*/ * token_key; } ;
typedef  int /*<<< orphan*/  packet_hmac ;
typedef  int /*<<< orphan*/  mbuf_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOPROTOOPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FLOW_DIVERT_TLV_HMAC ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  MBUF_WAITOK ; 
 int SHA_DIGEST_LENGTH ; 
 int FUNC1 (int /*<<< orphan*/ ,struct flow_divert_group*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ g_active_group_count ; 
 int /*<<< orphan*/  g_flow_divert_group_lck ; 
 struct flow_divert_group** g_flow_divert_groups ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nil_pcb ; 

__attribute__((used)) static int
FUNC9(mbuf_t packet, uint32_t ctl_unit)
{
	int							error = 0;
	struct flow_divert_group	*group = NULL;
	int							hmac_offset;
	uint8_t						packet_hmac[SHA_DIGEST_LENGTH];
	uint8_t						computed_hmac[SHA_DIGEST_LENGTH];
	mbuf_t						tail;

	FUNC5(&g_flow_divert_group_lck);

	if (g_flow_divert_groups != NULL && g_active_group_count > 0) {
		group = g_flow_divert_groups[ctl_unit];
	}

	if (group == NULL) {
		FUNC4(&g_flow_divert_group_lck);
		return ENOPROTOOPT;
	}

	FUNC5(&group->lck);

	if (group->token_key == NULL) {
		error = ENOPROTOOPT;
		goto done;
	}

	hmac_offset = FUNC2(packet, 0, FLOW_DIVERT_TLV_HMAC, &error, 0);
	if (hmac_offset < 0) {
		goto done;
	}

	error = FUNC3(packet, hmac_offset, FLOW_DIVERT_TLV_HMAC, sizeof(packet_hmac), packet_hmac, NULL);
	if (error) {
		goto done;
	}

	/* Chop off the HMAC TLV */
	error = FUNC7(packet, hmac_offset, MBUF_WAITOK, &tail);
	if (error) {
		goto done;
	}

	FUNC6(tail);

	error = FUNC1(packet, group, computed_hmac);
	if (error) {
		goto done;
	}

	if (FUNC8(packet_hmac, computed_hmac, sizeof(packet_hmac))) {
		FUNC0(LOG_WARNING, &nil_pcb, "HMAC in token does not match computed HMAC");
		error = EINVAL;
		goto done;
	}

done:
	FUNC4(&group->lck);
	FUNC4(&g_flow_divert_group_lck);
	return error;
}