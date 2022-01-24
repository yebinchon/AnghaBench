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
struct TYPE_3__ {int /*<<< orphan*/  inq_info; } ;
typedef  TYPE_1__ tINQ_DB_ENT ;
typedef  scalar_t__ tBT_TRANSPORT ;
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  tBTM_INQ_INFO ;
typedef  int /*<<< orphan*/  tBTM_CMPL_CB ;
typedef  int /*<<< orphan*/ * BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_EXT_RMT_NAME_TIMEOUT ; 
 int /*<<< orphan*/  BTM_RMT_NAME_EXT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ BT_TRANSPORT_LE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

tBTM_STATUS  FUNC4 (BD_ADDR remote_bda, tBTM_CMPL_CB *p_cb
                                       , tBT_TRANSPORT transport)
{
    tBTM_INQ_INFO   *p_cur = NULL;
    tINQ_DB_ENT     *p_i;

    FUNC0 ("BTM_ReadRemoteDeviceName: bd addr [%02x%02x%02x%02x%02x%02x]\n",
                   remote_bda[0], remote_bda[1], remote_bda[2],
                   remote_bda[3], remote_bda[4], remote_bda[5]);
    
    /* Use the remote device's clock offset if it is in the local inquiry database */
    if ((p_i = FUNC3 (remote_bda)) != NULL) {
        p_cur = &p_i->inq_info;
    }
    FUNC0 ("no device found in inquiry db\n");

#if (BLE_INCLUDED == TRUE)
    if (transport == BT_TRANSPORT_LE) {
        return FUNC1(remote_bda, p_cur, p_cb);
    } else
#endif
    {
        return (FUNC2 (remote_bda, p_cur, BTM_RMT_NAME_EXT,
                                       BTM_EXT_RMT_NAME_TIMEOUT, p_cb));
    }
}