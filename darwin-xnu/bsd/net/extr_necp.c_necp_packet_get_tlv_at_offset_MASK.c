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
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  int /*<<< orphan*/  length ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,void*) ; 

__attribute__((used)) static int
FUNC3(mbuf_t packet, int tlv_offset, u_int32_t buff_len, void *buff, u_int32_t *value_size)
{
	int			error	= 0;
	u_int32_t	length;

	if (tlv_offset < 0) {
		return (EINVAL);
	}

	error = FUNC2(packet, tlv_offset + sizeof(u_int8_t), sizeof(length), &length);
	if (error) {
		return (error);
	}

	u_int32_t total_len = FUNC1(packet, NULL);
	if (total_len < (tlv_offset + sizeof(u_int8_t) + sizeof(length) + length)) {
		FUNC0(LOG_ERR, "Got a bad TLV, length (%u) + offset (%d) < total length (%u)",
				length, (tlv_offset + sizeof(u_int8_t) + sizeof(length)), total_len);
		return (EINVAL);
	}

	if (value_size != NULL) {
		*value_size = length;
	}

	if (buff != NULL && buff_len > 0) {
		u_int32_t to_copy = (length < buff_len) ? length : buff_len;
		error = FUNC2(packet, tlv_offset + sizeof(u_int8_t) + sizeof(length), to_copy, buff);
		if (error) {
			return (error);
		}
	}

	return (0);
}