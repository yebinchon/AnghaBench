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
 int FUNC0 (char const*) ; 

int FUNC1(const char *str, const char *start)
{
    int i;
    int match_str_len = FUNC0(str);
    int start_len = FUNC0(start);

    if (start_len > match_str_len) {
        return -1;
    }
    for (i = 0; i < start_len; i++) {
        if (str[i] != start[i]) {
            return 1;
        }
    }
    return 0;
}