#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bd_addr; } ;
typedef  TYPE_1__ esp_ble_bond_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,TYPE_1__*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void __attribute__((unused)) FUNC5(void)
{
    int dev_num = FUNC1();

    esp_ble_bond_dev_t *dev_list = (esp_ble_bond_dev_t *)FUNC4(sizeof(esp_ble_bond_dev_t) * dev_num);
    FUNC0(&dev_num, dev_list);
    for (int i = 0; i < dev_num; i++) {
        FUNC2(dev_list[i].bd_addr);
    }

    FUNC3(dev_list);
}