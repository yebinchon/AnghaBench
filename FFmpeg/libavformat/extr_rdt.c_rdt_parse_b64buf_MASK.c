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
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,char const*,unsigned int) ; 
 unsigned char* FUNC1 (scalar_t__) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static unsigned char *
FUNC3 (unsigned int *target_len, const char *p)
{
    unsigned char *target;
    int len = FUNC2(p);
    if (*p == '\"') {
        p++;
        len -= 2; /* skip embracing " at start/end */
    }
    *target_len = len * 3 / 4;
    target = FUNC1(*target_len + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!target)
        return NULL;
    FUNC0(target, p, *target_len);
    return target;
}