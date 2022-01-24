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
typedef  char uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  SPACE_CHARS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC2(uint8_t **cursor)
{
    char *ret = *cursor += FUNC1(*cursor, SPACE_CHARS);
    *cursor += FUNC0(*cursor, SPACE_CHARS);
    if (**cursor) {
        *((*cursor)++) = 0;
        *cursor += FUNC1(*cursor, SPACE_CHARS);
    }
    return ret;
}