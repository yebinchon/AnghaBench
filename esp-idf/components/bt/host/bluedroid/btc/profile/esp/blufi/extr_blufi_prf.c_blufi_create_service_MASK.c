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
struct TYPE_2__ {int srvc_inst; int /*<<< orphan*/  gatt_if; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLUFI_HDL_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ blufi_env ; 
 int /*<<< orphan*/  blufi_srvc_uuid ; 

__attribute__((used)) static void FUNC2(void)
{
    if (!blufi_env.enabled) {
        FUNC1("blufi service added error.");
        return;
    }

    blufi_env.srvc_inst = 0x00;
    FUNC0(blufi_env.gatt_if, &blufi_srvc_uuid, blufi_env.srvc_inst, BLUFI_HDL_NUM, true);
}