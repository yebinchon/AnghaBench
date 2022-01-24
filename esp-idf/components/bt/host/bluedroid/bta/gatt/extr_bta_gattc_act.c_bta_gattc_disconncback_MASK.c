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
typedef  int /*<<< orphan*/  tBTA_GATTC_RCB ;
struct TYPE_5__ {int /*<<< orphan*/  layer_specific; } ;
struct TYPE_6__ {TYPE_1__ hdr; int /*<<< orphan*/  remote_bda; int /*<<< orphan*/  reason; } ;
struct TYPE_7__ {TYPE_2__ int_conn; } ;
typedef  TYPE_3__ tBTA_GATTC_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(tBTA_GATTC_RCB *p_rcb, tBTA_GATTC_DATA *p_data)
{
    if (p_rcb) {
        FUNC0(p_rcb,
                                     p_data->int_conn.reason,
                                     p_data->int_conn.remote_bda,
                                     p_data->int_conn.hdr.layer_specific);

    }
}