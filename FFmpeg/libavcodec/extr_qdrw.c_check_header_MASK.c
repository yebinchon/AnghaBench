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
 unsigned int FUNC0 (char const*) ; 

__attribute__((used)) static int FUNC1(const char *buf, int buf_size)
{
    unsigned w, h, v0, v1;

    if (buf_size < 40)
        return 0;

    w = FUNC0(buf+6);
    h = FUNC0(buf+8);
    v0 = FUNC0(buf+10);
    v1 = FUNC0(buf+12);

    if (!w || !h)
        return 0;

    if (v0 == 0x1101)
        return 1;
    if (v0 == 0x0011 && v1 == 0x02FF)
        return 2;
    return 0;
}