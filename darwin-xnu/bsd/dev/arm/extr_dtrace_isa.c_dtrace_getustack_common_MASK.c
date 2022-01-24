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
typedef  scalar_t__ user_addr_t ;
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RETURN_OFFSET ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static int
FUNC2(uint64_t * pcstack, int pcstack_limit, user_addr_t pc,
			user_addr_t sp)
{
	int ret = 0;
	
	FUNC0(pcstack == NULL || pcstack_limit > 0);

	while (pc != 0) {
		ret++;
		if (pcstack != NULL) {
			*pcstack++ = (uint64_t) pc;
			pcstack_limit--;
			if (pcstack_limit <= 0)
				break;
		}

		if (sp == 0)
			break;

		pc = FUNC1((sp + RETURN_OFFSET));
		sp = FUNC1(sp);
	}

	return (ret);
}