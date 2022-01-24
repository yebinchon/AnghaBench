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
struct TYPE_5__ {int /*<<< orphan*/  id; int /*<<< orphan*/  is_primary; } ;
typedef  TYPE_1__ tBTA_GATT_SRVC_ID ;
struct TYPE_6__ {int /*<<< orphan*/  id; int /*<<< orphan*/  is_primary; } ;
typedef  TYPE_2__ esp_gatt_srvc_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(tBTA_GATT_SRVC_ID *p_dest, esp_gatt_srvc_id_t *p_src)
{
    p_dest->is_primary = p_src->is_primary;
    FUNC0(&p_dest->id, &p_src->id);
}