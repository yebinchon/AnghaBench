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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/ * mbuf_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,void*,int*) ; 

__attribute__((used)) static int
FUNC6(mbuf_t packet, u_int8_t *buffer, u_int32_t buffer_length,
					   int tlv_offset, u_int32_t out_buffer_length, void *out_buffer, u_int32_t *value_size)
{
	if (packet != NULL) {
		// Handle mbuf parsing
		return FUNC5(packet, tlv_offset, out_buffer_length, out_buffer, value_size);
	}

	if (buffer == NULL) {
		FUNC1(LOG_ERR, "necp_get_tlv_at_offset buffer is NULL");
		return (EINVAL);
	}

	// Handle buffer parsing

	// Validate that buffer has enough room for any TLV
	if (tlv_offset + sizeof(u_int8_t) + sizeof(u_int32_t) > buffer_length) {
		FUNC0(LOG_ERR, "necp_get_tlv_at_offset buffer_length is too small for TLV (%u < %u)",
				buffer_length, tlv_offset + sizeof(u_int8_t) + sizeof(u_int32_t));
		return (EINVAL);
	}

	// Validate that buffer has enough room for this TLV
	u_int32_t tlv_length = FUNC3(buffer, tlv_offset);
	if (tlv_length > buffer_length - (tlv_offset + sizeof(u_int8_t) + sizeof(u_int32_t))) {
		FUNC0(LOG_ERR, "necp_get_tlv_at_offset buffer_length is too small for TLV of length %u (%u < %u)",
				tlv_length, buffer_length, tlv_offset + sizeof(u_int8_t) + sizeof(u_int32_t) + tlv_length);
		return (EINVAL);
	}

	if (out_buffer != NULL && out_buffer_length > 0) {
		// Validate that out buffer is large enough for  value
		if (out_buffer_length < tlv_length) {
			FUNC0(LOG_ERR, "necp_get_tlv_at_offset out_buffer_length is too small for TLV value (%u < %u)",
					out_buffer_length, tlv_length);
			return (EINVAL);
		}

		// Get value pointer
		u_int8_t *tlv_value = FUNC4(buffer, tlv_offset, NULL);
		if (tlv_value == NULL) {
			FUNC1(LOG_ERR, "necp_get_tlv_at_offset tlv_value is NULL");
			return (ENOENT);
		}

		// Copy value
		FUNC2(out_buffer, tlv_value, tlv_length);
	}

	// Copy out length
	if (value_size != NULL) {
		*value_size = tlv_length;
	}

	return (0);
}