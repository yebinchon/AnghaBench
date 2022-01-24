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
struct macx_triggers_args {int flags; } ;

/* Variables and functions */
 int ENOTSUP ; 
 int SWAP_COMPACT_DISABLE ; 
 int SWAP_COMPACT_ENABLE ; 
 int FUNC0 (int) ; 

int
FUNC1(
	struct macx_triggers_args *args)
{
	int	flags = args->flags;

	if (flags & (SWAP_COMPACT_DISABLE | SWAP_COMPACT_ENABLE))
		return (FUNC0(flags));

	return ENOTSUP;
}