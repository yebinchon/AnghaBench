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
struct TYPE_4__ {int /*<<< orphan*/  (* close ) () ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* cleanup ) () ;} ;

/* Variables and functions */
 TYPE_2__* hal ; 
 int hci_host_startup_flag ; 
 int /*<<< orphan*/ * hci_host_thread ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* packet_fragmenter ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
    hci_host_startup_flag  = false;
    FUNC0();

    packet_fragmenter->cleanup();

    //low_power_manager->cleanup();
    hal->close();

    FUNC1(hci_host_thread);
    hci_host_thread = NULL;
}