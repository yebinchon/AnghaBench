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
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,size_t,size_t) ; 
 char* FUNC2 (char*,char*,size_t) ; 

char *
FUNC3 (char *restrict dst, char *restrict src,
               size_t len, size_t chk_size)
{
    if (FUNC0(chk_size < len)) {
        FUNC1("__strncpy_chk object size check failed: dst %p, src %p, (%zu < %zu)", dst, src, chk_size, len);
    }
    return FUNC2(dst, src, len);
}