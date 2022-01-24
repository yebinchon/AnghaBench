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
struct TYPE_2__ {int /*<<< orphan*/  (* td0 ) (char) ;int /*<<< orphan*/  (* tr0 ) () ;} ;

/* Variables and functions */
 TYPE_1__* gPESF ; 
 scalar_t__ legacy_uart_enabled ; 
 scalar_t__ lpss_uart_enabled ; 
 scalar_t__ pcie_uart_enabled ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ uart_initted ; 

__attribute__((used)) static void
FUNC2(char c)
{
	if (uart_initted && (legacy_uart_enabled || lpss_uart_enabled || pcie_uart_enabled)) {
        while (!gPESF->tr0());  /* Wait until THR is empty. */
        gPESF->td0(c);
    }
}