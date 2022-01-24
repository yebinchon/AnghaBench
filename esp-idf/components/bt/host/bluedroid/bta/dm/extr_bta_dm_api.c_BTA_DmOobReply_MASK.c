#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  event; } ;
struct TYPE_5__ {int /*<<< orphan*/  value; int /*<<< orphan*/  len; int /*<<< orphan*/  bd_addr; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_OOB_REPLY ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/ * BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  BTA_DM_API_OOB_REPLY_EVT ; 
 int /*<<< orphan*/  BT_OCTET16_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(BD_ADDR bd_addr, UINT8 len, UINT8 *p_value)
{
    tBTA_DM_API_OOB_REPLY    *p_msg;

    if ((p_msg = (tBTA_DM_API_OOB_REPLY *) FUNC2(sizeof(tBTA_DM_API_OOB_REPLY))) != NULL) {
        p_msg->hdr.event = BTA_DM_API_OOB_REPLY_EVT;
        if(p_value == NULL || len > BT_OCTET16_LEN) {
            return;
        }
        FUNC1(p_msg->bd_addr, bd_addr, BD_ADDR_LEN);
        p_msg->len = len;
        FUNC1(p_msg->value, p_value, len);
        FUNC0(p_msg);
    }
}