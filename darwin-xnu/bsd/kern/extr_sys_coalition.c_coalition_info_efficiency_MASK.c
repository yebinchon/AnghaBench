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
typedef  int /*<<< orphan*/  user_size_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  flags ;
typedef  int /*<<< orphan*/  coalition_t ;

/* Variables and functions */
 int COALITION_EFFICIENCY_VALID_FLAGS ; 
 int COALITION_FLAGS_EFFICIENT ; 
 scalar_t__ COALITION_TYPE_JETSAM ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(coalition_t coal, user_addr_t buffer, user_size_t bufsize)
{
	int error = 0;
	if (FUNC2(coal) != COALITION_TYPE_JETSAM)
		return EINVAL;
	uint64_t flags = 0;	
	error = FUNC3(buffer, &flags, FUNC0(bufsize, sizeof(flags)));
	if (error)
		return error;
	if ((flags & COALITION_EFFICIENCY_VALID_FLAGS) == 0)
		return EINVAL;
	if (flags & COALITION_FLAGS_EFFICIENT) {
	    FUNC1(coal);
	}
	return error;
}