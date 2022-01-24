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
typedef  int tBTM_STATUS ;
typedef  int /*<<< orphan*/  cond ;
typedef  int /*<<< orphan*/  bt_event_mask_t ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_4__ {int /*<<< orphan*/  (* transmit_command ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* make_set_event_mask ) (int /*<<< orphan*/  const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_CONNECTABLE ; 
 int /*<<< orphan*/  BTM_DEFAULT_CONN_INTERVAL ; 
 int /*<<< orphan*/  BTM_DEFAULT_CONN_WINDOW ; 
 int /*<<< orphan*/  BTM_DEFAULT_DISC_INTERVAL ; 
 int /*<<< orphan*/  BTM_DEFAULT_DISC_WINDOW ; 
 int /*<<< orphan*/  BTM_GENERAL_DISCOVERABLE ; 
 int BTM_NO_RESOURCES ; 
 int BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  HCI_DO_AUTO_ACCEPT_CONNECT ; 
 int /*<<< orphan*/  HCI_FILTER_COND_NEW_DEVICE ; 
 int /*<<< orphan*/  HCI_FILTER_CONNECTION_SETUP ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC5 () ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 

tBTM_STATUS FUNC9(void)
{
    UINT8   cond;

    FUNC2 ("BTM: BTM_EnableTestMode");

    /* set auto accept connection as this is needed during test mode */
    /* Allocate a buffer to hold HCI command */
    cond = HCI_DO_AUTO_ACCEPT_CONNECT;
    if (!FUNC4(HCI_FILTER_CONNECTION_SETUP,
                                     HCI_FILTER_COND_NEW_DEVICE,
                                     &cond, sizeof(cond))) {
        return (BTM_NO_RESOURCES);
    }

    /* put device to connectable mode */
    if (!(FUNC0(BTM_CONNECTABLE, BTM_DEFAULT_CONN_WINDOW,
                               BTM_DEFAULT_CONN_INTERVAL) == BTM_SUCCESS)) {
        return BTM_NO_RESOURCES;
    }

    /* put device to discoverable mode */
    if (!(FUNC1(BTM_GENERAL_DISCOVERABLE, BTM_DEFAULT_DISC_WINDOW,
                                BTM_DEFAULT_DISC_INTERVAL) == BTM_SUCCESS)) {
        return BTM_NO_RESOURCES;
    }

    /* mask off all of event from controller */
    FUNC5()->transmit_command(
        FUNC6()->make_set_event_mask((const bt_event_mask_t *)("\x00\x00\x00\x00\x00\x00\x00\x00")),
        NULL,
        NULL,
        NULL);

    /* Send the HCI command */
    if (FUNC3 ()) {
        return (BTM_SUCCESS);
    } else {
        return (BTM_NO_RESOURCES);
    }
}