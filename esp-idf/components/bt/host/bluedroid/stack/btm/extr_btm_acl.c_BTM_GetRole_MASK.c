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
typedef  int /*<<< orphan*/  tBTM_STATUS ;
struct TYPE_3__ {int /*<<< orphan*/  link_role; } ;
typedef  TYPE_1__ tACL_CONN ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_ROLE_UNDEFINED ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTM_UNKNOWN_ADDR ; 
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tBTM_STATUS FUNC2 (BD_ADDR remote_bd_addr, UINT8 *p_role)
{
    tACL_CONN   *p;
    FUNC0 ("BTM_GetRole\n");
    if ((p = FUNC1(remote_bd_addr, BT_TRANSPORT_BR_EDR)) == NULL) {
        *p_role = BTM_ROLE_UNDEFINED;
        return (BTM_UNKNOWN_ADDR);
    }

    /* Get the current role */
    *p_role = p->link_role;
    return (BTM_SUCCESS);
}