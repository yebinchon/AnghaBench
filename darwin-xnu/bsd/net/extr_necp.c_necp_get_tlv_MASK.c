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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  mbuf_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(mbuf_t packet, u_int8_t *buffer, u_int32_t buffer_length,
			 int offset, u_int8_t type, u_int32_t buff_len, void *buff, u_int32_t *value_size)
{
	int error = 0;

	int tlv_offset = FUNC0(packet, buffer, buffer_length, offset, type, &error, 0);
	if (tlv_offset < 0) {
		return (error);
	}

	return (FUNC1(packet, buffer, buffer_length, tlv_offset, buff_len, buff, value_size));
}