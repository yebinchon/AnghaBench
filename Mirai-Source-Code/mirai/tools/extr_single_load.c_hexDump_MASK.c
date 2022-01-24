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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(char *desc, void *addr, int len)
{
    int i;
    unsigned char buff[17];
    unsigned char *pc = (unsigned char*)addr;
    if (desc != NULL) FUNC0 ("%s:\n", desc);
    for (i = 0; i < len; i++) {
        if ((i % 16) == 0)
        {
            if (i != 0) FUNC0 ("  %s\n", buff);
            FUNC0 ("  %04x ", i);
        }
        FUNC0 (" %02x", pc[i]);
        if ((pc[i] < 0x20) || (pc[i] > 0x7e)) buff[i % 16] = '.';
        else buff[i % 16] = pc[i];
        buff[(i % 16) + 1] = '\0';
    }
    while ((i % 16) != 0)
    {
        FUNC0 ("   ");
        i++;
    }
    FUNC0 ("  %s\n", buff);
}