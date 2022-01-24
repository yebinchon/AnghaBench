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
typedef  scalar_t__ u_int8_t ;
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  type ;
typedef  int /*<<< orphan*/  length ;

/* Variables and functions */
 int TRUE ; 
 scalar_t__ FUNC0 (scalar_t__*,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__,int,scalar_t__*,int) ; 

u_int8_t *
FUNC3(u_int8_t *cursor, u_int8_t type,
								   u_int32_t length, const void *value, bool *updated,
								   u_int8_t *buffer, u_int32_t buffer_length)
{
	if (!FUNC2(cursor, type, length, buffer, buffer_length)) {
		return (NULL);
	}
	u_int8_t *next_tlv = (u_int8_t *)(cursor + sizeof(type) + sizeof(length) + length);
	if (*updated || *(u_int8_t *)(cursor) != type) {
		*(u_int8_t *)(cursor) = type;
		*updated = TRUE;
	}
	if (*updated || *(u_int32_t *)(void *)(cursor + sizeof(type)) != length) {
		*(u_int32_t *)(void *)(cursor + sizeof(type)) = length;
		*updated = TRUE;
	}
	if (length > 0) {
		if (*updated || FUNC0((u_int8_t *)(cursor + sizeof(type) + sizeof(length)), value, length) != 0) {
			FUNC1((u_int8_t *)(cursor + sizeof(type) + sizeof(length)), value, length);
			*updated = TRUE;
		}
	}
	return (next_tlv);
}