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
struct resolv_entries {struct resolv_entries* addrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resolv_entries*) ; 

void FUNC1(struct resolv_entries *entries)
{
    if (entries == NULL)
        return;
    if (entries->addrs != NULL)
        FUNC0(entries->addrs);
    FUNC0(entries);
}