#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBT_TRANSPORT ;
struct TYPE_3__ {int hci_handle; } ;
typedef  TYPE_1__ tACL_CONN ;
typedef  int UINT16 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

UINT16 FUNC2 (BD_ADDR remote_bda, tBT_TRANSPORT transport)
{
    tACL_CONN   *p;
    FUNC0 ("BTM_GetHCIConnHandle\n");
    p = FUNC1(remote_bda, transport);
    if (p != (tACL_CONN *)NULL) {
        return (p->hci_handle);
    }

    /* If here, no BD Addr found */
    return (0xFFFF);
}