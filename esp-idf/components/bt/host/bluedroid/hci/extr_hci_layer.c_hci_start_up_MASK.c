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
struct TYPE_4__ {int /*<<< orphan*/  (* open ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* init ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_HOST_TASK_NAME ; 
 int /*<<< orphan*/  HCI_HOST_TASK_PINNED_TO_CORE ; 
 int /*<<< orphan*/  HCI_HOST_TASK_PRIO ; 
 int /*<<< orphan*/  HCI_HOST_TASK_STACK_SIZE ; 
 TYPE_2__* hal ; 
 int /*<<< orphan*/  hal_callbacks ; 
 int hci_host_startup_flag ; 
 int /*<<< orphan*/ * hci_host_thread ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* packet_fragmenter ; 
 int /*<<< orphan*/  packet_fragmenter_callbacks ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(void)
{
    if (FUNC0()) {
        goto error;
    }

    hci_host_thread = FUNC2(HCI_HOST_TASK_NAME, HCI_HOST_TASK_STACK_SIZE, HCI_HOST_TASK_PRIO, HCI_HOST_TASK_PINNED_TO_CORE, 2);
    if (hci_host_thread == NULL) {
        return -2;
    }

    packet_fragmenter->init(&packet_fragmenter_callbacks);
    hal->open(&hal_callbacks, hci_host_thread);

    hci_host_startup_flag = true;
    return 0;
error:
    FUNC1();
    return -1;
}