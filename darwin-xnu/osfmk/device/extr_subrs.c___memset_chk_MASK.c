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
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (void*,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,int,size_t,size_t) ; 

void *
FUNC3(void *dst, int c, size_t s, size_t chk_size)
{
    if (FUNC0(chk_size < s))
        FUNC2("__memset_chk object size check failed: dst %p, c %c, (%zu < %zu)", dst, c, chk_size, s);
    return FUNC1(dst, c, s);
}