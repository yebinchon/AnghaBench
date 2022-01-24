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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int,int,int,int) ; 

void
FUNC1 (char *cmd, int size,
                       int stream_nr, int rule_nr)
{
    FUNC0(cmd, size, "stream=%d;rule=%d,stream=%d;rule=%d",
                stream_nr, rule_nr * 2, stream_nr, rule_nr * 2 + 1);
}