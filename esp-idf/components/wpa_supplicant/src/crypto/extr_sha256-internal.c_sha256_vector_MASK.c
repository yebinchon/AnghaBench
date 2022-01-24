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
struct sha256_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sha256_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sha256_state*) ; 
 scalar_t__ FUNC2 (struct sha256_state*,int /*<<< orphan*/  const*,size_t const) ; 

int 
FUNC3(size_t num_elem, const u8 *addr[], const size_t *len,
		  u8 *mac)
{
	struct sha256_state ctx;
	size_t i;

	FUNC1(&ctx);
	for (i = 0; i < num_elem; i++)
		if (FUNC2(&ctx, addr[i], len[i]))
			return -1;
	if (FUNC0(&ctx, mac))
		return -1;
	return 0;
}