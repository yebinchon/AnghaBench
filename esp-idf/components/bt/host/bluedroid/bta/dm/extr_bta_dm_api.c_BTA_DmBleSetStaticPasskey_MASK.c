#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
struct TYPE_6__ {int add; int /*<<< orphan*/  static_passkey; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_SET_DEFAULT_PASSKEY ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_DM_API_BLE_SET_STATIC_PASSKEY_EVT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(bool add, uint32_t passkey)
{
    tBTA_DM_API_SET_DEFAULT_PASSKEY    *p_msg;

    if ((p_msg = (tBTA_DM_API_SET_DEFAULT_PASSKEY *) FUNC2(sizeof(tBTA_DM_API_SET_DEFAULT_PASSKEY))) != NULL) {
        FUNC1(p_msg, 0, sizeof(tBTA_DM_API_SET_DEFAULT_PASSKEY));

        p_msg->hdr.event = BTA_DM_API_BLE_SET_STATIC_PASSKEY_EVT;
        p_msg->add = add;
        p_msg->static_passkey = passkey;
        FUNC0(p_msg);
    }
}