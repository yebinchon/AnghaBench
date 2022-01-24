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
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,size_t,size_t,size_t) ; 
 size_t FUNC2 (char*) ; 
 char* FUNC3 (char*,char const*,size_t) ; 
 size_t FUNC4 (char const*,size_t) ; 

char *
FUNC5 (char *restrict dst, const char *restrict src,
               size_t len, size_t chk_size)
{
    size_t len1 = FUNC2(dst);
    size_t len2 = FUNC4(src, len);
    if (FUNC0 (chk_size < len1 + len2 + 1)) {
        FUNC1("__strncat_chk object size check failed: dst %p, src %p, (%zu < %zu + %zu + 1)", dst, src, chk_size, len1, len2);
    }
    return FUNC3(dst, src, len);
}