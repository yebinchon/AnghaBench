#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT16 ;
struct TYPE_2__ {int btm_def_link_policy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int HCI_ENABLE_HOLD_MODE ; 
 int HCI_ENABLE_MASTER_SLAVE_SWITCH ; 
 int HCI_ENABLE_PARK_MODE ; 
 int HCI_ENABLE_SNIFF_MODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__ btm_cb ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7 (UINT16 settings)
{
    UINT8 *localFeatures = FUNC0();

    FUNC1("BTM_SetDefaultLinkPolicy setting:0x%04x\n", settings);

    if ((settings & HCI_ENABLE_MASTER_SLAVE_SWITCH) && (!FUNC5(localFeatures))) {
        settings &= ~HCI_ENABLE_MASTER_SLAVE_SWITCH;
        FUNC1("BTM_SetDefaultLinkPolicy switch not supported (settings: 0x%04x)\n", settings);
    }
    if ((settings & HCI_ENABLE_HOLD_MODE) && (!FUNC2(localFeatures))) {
        settings &= ~HCI_ENABLE_HOLD_MODE;
        FUNC1("BTM_SetDefaultLinkPolicy hold not supported (settings: 0x%04x)\n", settings);
    }
    if ((settings & HCI_ENABLE_SNIFF_MODE) && (!FUNC4(localFeatures))) {
        settings &= ~HCI_ENABLE_SNIFF_MODE;
        FUNC1("BTM_SetDefaultLinkPolicy sniff not supported (settings: 0x%04x)\n", settings);
    }
    if ((settings & HCI_ENABLE_PARK_MODE) && (!FUNC3(localFeatures))) {
        settings &= ~HCI_ENABLE_PARK_MODE;
        FUNC1("BTM_SetDefaultLinkPolicy park not supported (settings: 0x%04x)\n", settings);
    }
    FUNC1("Set DefaultLinkPolicy:0x%04x\n", settings);

    btm_cb.btm_def_link_policy = settings;

    /* Set the default Link Policy of the controller */
    FUNC6(settings);
}