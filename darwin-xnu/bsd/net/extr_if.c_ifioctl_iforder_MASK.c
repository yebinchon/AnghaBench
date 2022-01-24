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
typedef  size_t uint32_t ;
typedef  int u_long ;
typedef  int u_int32_t ;
struct if_order {int ifo_count; int /*<<< orphan*/  ifo_ordered_indices; } ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FALSE ; 
 int /*<<< orphan*/  M_NECP ; 
 int /*<<< orphan*/  M_WAITOK ; 
#define  SIOCSIFORDER 128 
 int TRUE ; 
 int /*<<< orphan*/  USER_ADDR_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC2 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,size_t) ; 
 int /*<<< orphan*/  if_index ; 
 int FUNC4 (int*,size_t) ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC5(u_long cmd, caddr_t data)
{
	int error = 0;
	u_int32_t *ordered_indices = NULL;
	if (data == NULL) {
		return (EINVAL);
	}

	switch (cmd) {
	case SIOCSIFORDER: {		/* struct if_order */
		struct if_order *ifo = (struct if_order *)(void *)data;

		if (ifo->ifo_count > (u_int32_t)if_index) {
			error = EINVAL;
			break;
		}

		size_t length =	(ifo->ifo_count * sizeof(u_int32_t));
		if (length > 0) {
			if (ifo->ifo_ordered_indices == USER_ADDR_NULL) {
				error = EINVAL;
				break;
			}
			ordered_indices = FUNC2(length, M_NECP, M_WAITOK);
			if (ordered_indices == NULL) {
				error = ENOMEM;
				break;
			}

			error = FUNC3(ifo->ifo_ordered_indices,
			    ordered_indices, length);
			if (error != 0) {
				break;
			}

			/* ordered_indices should not contain duplicates */
			bool found_duplicate = FALSE;
			for (uint32_t i = 0; i < (ifo->ifo_count - 1) && !found_duplicate ; i++){
				for (uint32_t j = i + 1; j < ifo->ifo_count && !found_duplicate ; j++){
					if (ordered_indices[j] == ordered_indices[i]){
						error = EINVAL;
						found_duplicate = TRUE;
						break;
					}
				}
			}
			if (found_duplicate) {
				break;
			}
		}

		error = FUNC4(ordered_indices, ifo->ifo_count);

		break;
	}

	default: {
		FUNC0(0);
		/* NOTREACHED */
	}
	}

	if (ordered_indices != NULL) {
		FUNC1(ordered_indices, M_NECP);
	}

	return (error);
}