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
 int FUNC0 () ; 
 int portfd ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int
FUNC2(void)
{
    portfd = FUNC0();
    if (portfd == -1) {
        FUNC1("port_create");
        return -1;
    }
    return 0;
}