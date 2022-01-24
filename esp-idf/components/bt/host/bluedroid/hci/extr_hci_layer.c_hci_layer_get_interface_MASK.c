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
typedef  int /*<<< orphan*/  hci_t ;

/* Variables and functions */
 int /*<<< orphan*/  hal ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  const interface ; 
 int /*<<< orphan*/  packet_fragmenter ; 
 int /*<<< orphan*/  FUNC2 () ; 

const hci_t *FUNC3(void)
{
    hal = FUNC0();
    packet_fragmenter = FUNC2();

    FUNC1();
    return &interface;
}