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
 int /*<<< orphan*/  bytes_freed ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  num_frees ; 
 scalar_t__ FUNC1 (size_t) ; 

void
FUNC2(void *ptr, size_t size)
{
#if DEBUG
    ++num_frees;
    bytes_freed += round_page(size);
#endif /* DEBUG */
    FUNC0(ptr, size);
}