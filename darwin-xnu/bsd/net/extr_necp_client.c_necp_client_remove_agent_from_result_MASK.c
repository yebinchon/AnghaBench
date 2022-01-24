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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  scalar_t__ u_int8_t ;
typedef  int u_int32_t ;
struct necp_tlv_header {int dummy; } ;
struct necp_client_result_netagent {int /*<<< orphan*/  netagent_uuid; } ;
struct necp_client {size_t result_length; scalar_t__* result; } ;

/* Variables and functions */
 scalar_t__ NECP_CLIENT_RESULT_NETAGENT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__*,size_t) ; 
 scalar_t__ FUNC3 (scalar_t__*,size_t) ; 
 scalar_t__ FUNC4 (scalar_t__*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct necp_client *client, uuid_t netagent_uuid)
{
	size_t offset = 0;

	u_int8_t *result_buffer = client->result;
	while ((offset + sizeof(struct necp_tlv_header)) <= client->result_length) {
		u_int8_t type = FUNC3(result_buffer, offset);
		u_int32_t length = FUNC2(result_buffer, offset);

		size_t tlv_total_length = (sizeof(struct necp_tlv_header) + length);
		if (type == NECP_CLIENT_RESULT_NETAGENT &&
			length == sizeof(struct necp_client_result_netagent) &&
			(offset + tlv_total_length) <= client->result_length) {
			struct necp_client_result_netagent *value = ((struct necp_client_result_netagent *)(void *)
														 FUNC4(result_buffer, offset, NULL));
			if (FUNC5(value->netagent_uuid, netagent_uuid) == 0) {
				// Found a netagent to remove
				// Shift bytes down to remove the tlv, and adjust total length
				// Don't adjust the current offset
				FUNC0(result_buffer + offset,
						result_buffer + offset + tlv_total_length,
						client->result_length - (offset + tlv_total_length));
				client->result_length -= tlv_total_length;
				FUNC1(result_buffer + client->result_length, 0, sizeof(client->result) - client->result_length);
				continue;
			}
		}

		offset += tlv_total_length;
	}
}