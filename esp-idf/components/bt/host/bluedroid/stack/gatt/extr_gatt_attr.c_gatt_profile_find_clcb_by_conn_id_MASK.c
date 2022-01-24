#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ conn_id; scalar_t__ in_use; } ;
typedef  TYPE_1__ tGATT_PROFILE_CLCB ;
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_5__ {TYPE_1__* profile_clcb; } ;

/* Variables and functions */
 scalar_t__ GATT_MAX_APPS ; 
 TYPE_3__ gatt_cb ; 

__attribute__((used)) static tGATT_PROFILE_CLCB *FUNC0(UINT16 conn_id)
{
    UINT8 i_clcb;
    tGATT_PROFILE_CLCB    *p_clcb = NULL;

    for (i_clcb = 0, p_clcb = gatt_cb.profile_clcb; i_clcb < GATT_MAX_APPS; i_clcb++, p_clcb++) {
        if (p_clcb->in_use && p_clcb->conn_id == conn_id) {
            return p_clcb;
        }
    }

    return NULL;
}