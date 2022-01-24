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
 int /*<<< orphan*/  NAME_CHARS ; 
 size_t FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(char **tubename, char *buf, char **end)
{
    size_t len;

    while (buf[0] == ' ')
        buf++;
    len = FUNC0(buf, NAME_CHARS);
    if (len == 0)
        return -1;
    if (tubename)
        *tubename = buf;
    if (end)
        *end = buf + len;
    return 0;
}