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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t const) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((visibility("hidden")))
size_t
FUNC2(char * restrict dst, const char * restrict src, size_t maxlen) {
    const size_t srclen = FUNC1(src);
    if (srclen < maxlen) {
        FUNC0(dst, src, srclen+1);
    } else if (maxlen != 0) {
        FUNC0(dst, src, maxlen-1);
        dst[maxlen-1] = '\0';
    }
    return srclen;
}