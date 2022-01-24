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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (char const*,size_t) ; 

char *
FUNC3(char * dst, const char * src, size_t maxlen) {
    const size_t srclen = FUNC2(src, maxlen);
    if (srclen < maxlen) {
        FUNC0(dst, src, srclen);
        FUNC1(dst+srclen, 0, maxlen - srclen);
    } else {
        FUNC0(dst, src, maxlen);
    }
    return dst;
}