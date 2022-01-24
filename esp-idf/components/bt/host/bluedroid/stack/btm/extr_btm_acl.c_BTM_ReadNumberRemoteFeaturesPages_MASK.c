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
struct TYPE_3__ {int /*<<< orphan*/  num_read_pages; } ;
typedef  TYPE_1__ tACL_CONN ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

UINT8 FUNC2 (BD_ADDR addr)
{
    tACL_CONN        *p = FUNC1(addr, BT_TRANSPORT_BR_EDR);
    FUNC0 ("BTM_ReadNumberRemoteFeaturesPages\n");
    if (p == NULL) {
        return (0);
    }

    return (p->num_read_pages);
}