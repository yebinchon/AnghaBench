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
typedef  int /*<<< orphan*/  tGATT_STATUS ;
typedef  int /*<<< orphan*/  tDIS_CB ;
typedef  int /*<<< orphan*/  tDIS_ATTR_MASK ;
typedef  int /*<<< orphan*/  esp_gatts_if_t ;
struct TYPE_3__ {scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIS_MAX_ATTR_NUM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__ dis_cb ; 
 int /*<<< orphan*/  dis_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  uuid ; 

void FUNC3 (esp_gatts_if_t gatt_if, tDIS_ATTR_MASK dis_attr_mask)
{

    tGATT_STATUS      status;
    dis_mask = dis_attr_mask;
    if (dis_cb.enabled) {
        FUNC0("DIS already initalized");
        return;
    }

    FUNC2(&dis_cb, 0, sizeof(tDIS_CB));

    FUNC1 (gatt_if , &uuid, 0, DIS_MAX_ATTR_NUM, TRUE);

}