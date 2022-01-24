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
typedef  uintptr_t u_int32_t ;
typedef  int /*<<< orphan*/  type ;
typedef  int /*<<< orphan*/  length ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,uintptr_t,uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline bool
FUNC2(u_int8_t *cursor, u_int8_t type, u_int32_t length,
							   u_int8_t *buffer, u_int32_t buffer_length)
{
	if (cursor < buffer || (uintptr_t)(cursor - buffer) > buffer_length) {
		FUNC1(LOG_ERR, "Cannot write TLV in buffer (invalid cursor)");
		return (false);
	}
	u_int8_t *next_tlv = (u_int8_t *)(cursor + sizeof(type) + sizeof(length) + length);
	if (next_tlv <= buffer || // make sure the next TLV start doesn't overflow
		(uintptr_t)(next_tlv - buffer) > buffer_length) { // make sure the next TLV has enough room in buffer
		FUNC0(LOG_ERR, "Cannot write TLV in buffer (TLV length %u, buffer length %u)",
				length, buffer_length);
		return (false);
	}
	return (true);
}