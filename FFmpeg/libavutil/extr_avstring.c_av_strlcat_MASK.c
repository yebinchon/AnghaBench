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
 size_t FUNC0 (char*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

size_t FUNC2(char *dst, const char *src, size_t size)
{
    size_t len = FUNC1(dst);
    if (size <= len + 1)
        return len + FUNC1(src);
    return len + FUNC0(dst + len, src, size - len);
}