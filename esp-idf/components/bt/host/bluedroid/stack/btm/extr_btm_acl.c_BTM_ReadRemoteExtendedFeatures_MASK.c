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
struct TYPE_3__ {size_t** peer_lmp_features; } ;
typedef  TYPE_1__ tACL_CONN ;
typedef  size_t UINT8 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 size_t HCI_EXT_FEATURES_PAGE_MAX ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

UINT8 *FUNC3 (BD_ADDR addr, UINT8 page_number)
{
    tACL_CONN        *p = FUNC2(addr, BT_TRANSPORT_BR_EDR);
    FUNC0 ("BTM_ReadRemoteExtendedFeatures\n");
    if (p == NULL) {
        return (NULL);
    }

    if (page_number > HCI_EXT_FEATURES_PAGE_MAX) {
        FUNC1("Warning: BTM_ReadRemoteExtendedFeatures page %d unknown\n", page_number);
        return NULL;
    }

    return (p->peer_lmp_features[page_number]);
}