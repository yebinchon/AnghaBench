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

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ have_dss ; 
 int /*<<< orphan*/  maps_coalesce ; 

__attribute__((used)) static bool
FUNC1(void *chunk_a, size_t size_a, void *chunk_b, size_t size_b,
    bool committed, unsigned arena_ind)
{

	if (!maps_coalesce)
		return (true);
	if (have_dss && FUNC0(chunk_a) != FUNC0(chunk_b))
		return (true);

	return (false);
}