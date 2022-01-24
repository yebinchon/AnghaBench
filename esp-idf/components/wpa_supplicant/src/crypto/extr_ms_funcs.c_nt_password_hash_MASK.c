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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,size_t,size_t*) ; 

int FUNC2(const u8 *password, size_t password_len,
		 u8 *password_hash)
{
	u8 buf[512], *pos;
	size_t len, max_len;

	max_len = sizeof(buf);
	if (FUNC1(password, password_len, buf, max_len, &len) < 0)
		return -1;

	len *= 2;
	pos = buf;
	return FUNC0(1, (const u8 **) &pos, &len, password_hash);
}