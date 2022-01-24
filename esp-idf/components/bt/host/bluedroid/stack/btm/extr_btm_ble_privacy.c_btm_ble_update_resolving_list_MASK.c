#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ resolving_list_index; int /*<<< orphan*/  in_controller_list; } ;
struct TYPE_6__ {TYPE_1__ ble; } ;
typedef  TYPE_2__ tBTM_SEC_DEV_REC ;
struct TYPE_7__ {int /*<<< orphan*/  (* supports_ble_privacy ) () ;} ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_RESOLVING_LIST_BIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(BD_ADDR pseudo_bda, BOOLEAN add)
{
    tBTM_SEC_DEV_REC *p_dev_rec = FUNC2(pseudo_bda);
    if (p_dev_rec == NULL) {
        return;
    }

    if (add) {
        p_dev_rec->ble.in_controller_list |= BTM_RESOLVING_LIST_BIT;
        if (!FUNC3()->supports_ble_privacy()) {
            p_dev_rec->ble.resolving_list_index = FUNC1();
        }
    } else {
        p_dev_rec->ble.in_controller_list &= ~BTM_RESOLVING_LIST_BIT;
        if (!FUNC3()->supports_ble_privacy()) {
            /* clear IRK list index mask */
            FUNC0(p_dev_rec->ble.resolving_list_index);
            p_dev_rec->ble.resolving_list_index = 0;
        }
    }
}