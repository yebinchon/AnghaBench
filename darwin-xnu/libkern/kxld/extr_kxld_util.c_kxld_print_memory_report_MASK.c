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
 int bytes_allocated ; 
 scalar_t__ bytes_freed ; 
 int /*<<< orphan*/  kKxldLogExplicit ; 
 int /*<<< orphan*/  kKxldLogLinking ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int,scalar_t__,scalar_t__) ; 
 int num_allocations ; 
 int /*<<< orphan*/  num_frees ; 

void
FUNC1(void)
{
#if DEBUG
    kxld_log(kKxldLogLinking, kKxldLogExplicit, "kxld memory usage report:\n"
        "\tNumber of allocations:   %8lu\n"
        "\tNumber of frees:         %8lu\n"
        "\tAverage allocation size: %8lu\n"
        "\tTotal bytes allocated:   %8lu\n"
        "\tTotal bytes freed:       %8lu\n"
        "\tTotal bytes leaked:      %8lu",
        num_allocations, num_frees, bytes_allocated / num_allocations,
        bytes_allocated, bytes_freed, bytes_allocated - bytes_freed);
#endif
}