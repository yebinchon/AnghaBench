#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* rd0 ) () ;int /*<<< orphan*/  (* rr0 ) () ;} ;

/* Variables and functions */
 TYPE_1__* gPESF ; 
 scalar_t__ legacy_uart_enabled ; 
 scalar_t__ lpss_uart_enabled ; 
 scalar_t__ pcie_uart_enabled ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 scalar_t__ uart_initted ; 

__attribute__((used)) static int
FUNC2(void)
{
    if (uart_initted && (legacy_uart_enabled || lpss_uart_enabled || pcie_uart_enabled)) {
        if (!gPESF->rr0())
            return -1;
        return gPESF->rd0();
    }
    return -1;
}