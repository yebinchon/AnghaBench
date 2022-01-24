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
typedef  int /*<<< orphan*/  tBLE_ADDR_TYPE ;
struct TYPE_3__ {int /*<<< orphan*/ * conn_addr; int /*<<< orphan*/  conn_addr_type; } ;
typedef  TYPE_1__ tACL_CONN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  BT_TRANSPORT_LE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4 (BD_ADDR remote_bda, BD_ADDR local_conn_addr, tBLE_ADDR_TYPE *p_addr_type)
{
    tACL_CONN       *p_acl = FUNC2(remote_bda, BT_TRANSPORT_LE);

    if (p_acl == NULL) {
        FUNC1("No connection exist!");
        return;
    }
    FUNC3(local_conn_addr, p_acl->conn_addr, BD_ADDR_LEN);
    * p_addr_type = p_acl->conn_addr_type;

    FUNC0 ("BTM_ReadConnectionAddr address type: %d addr: 0x%02x",
                     p_acl->conn_addr_type, p_acl->conn_addr[0]);
}