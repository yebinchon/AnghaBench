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
 int /*<<< orphan*/  SPACES ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const char **buf)
{
    while (**buf) {
        /* skip leading spaces */
        *buf += FUNC1(*buf, SPACES);
        if (**buf != '#')
            break;

        (*buf)++;

        /* skip comment until the end of line */
        *buf += FUNC0(*buf, "\n");
        if (**buf)
            (*buf)++;
    }
}