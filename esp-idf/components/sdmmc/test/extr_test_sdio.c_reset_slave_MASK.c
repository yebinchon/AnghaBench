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
struct TYPE_3__ {int pin_bit_mask; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ gpio_config_t ;

/* Variables and functions */
 int FUNC0 (int const) ; 
 int /*<<< orphan*/  GPIO_MODE_OUTPUT_OD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void)
{
    const int pin_en = 18;
    const int pin_io0 = 19;
    gpio_config_t gpio_cfg = {
            .pin_bit_mask = FUNC0(pin_en) | FUNC0(pin_io0),
            .mode = GPIO_MODE_OUTPUT_OD,
    };
    FUNC1(FUNC2(&gpio_cfg));
    FUNC3(pin_en, 0);
    FUNC3(pin_io0, 0);
    FUNC4(10 / portTICK_PERIOD_MS);
    FUNC3(pin_en, 1);
    FUNC4(10 / portTICK_PERIOD_MS);
    FUNC3(pin_io0, 1);
}