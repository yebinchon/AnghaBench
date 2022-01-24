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
typedef  int int64_t ;
struct TYPE_3__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  pin_bit_mask; } ;
typedef  TYPE_1__ gpio_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int BUTTON_GPIO_NUM_DEFAULT ; 
 int BUTTON_WAKEUP_LEVEL_DEFAULT ; 
 int /*<<< orphan*/  CONFIG_ESP_CONSOLE_UART_NUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  ESP_SLEEP_WAKEUP_GPIO 129 
#define  ESP_SLEEP_WAKEUP_TIMER 128 
 int /*<<< orphan*/  GPIO_INTR_HIGH_LEVEL ; 
 int /*<<< orphan*/  GPIO_INTR_LOW_LEVEL ; 
 int /*<<< orphan*/  GPIO_MODE_INPUT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int const FUNC11 (int const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void FUNC14(void)
{
    /* Configure the button GPIO as input, enable wakeup */
    const int button_gpio_num = BUTTON_GPIO_NUM_DEFAULT;
    const int wakeup_level = BUTTON_WAKEUP_LEVEL_DEFAULT;
    gpio_config_t config = {
            .pin_bit_mask = FUNC0(button_gpio_num),
            .mode = GPIO_MODE_INPUT
    };
    FUNC1(FUNC7(&config));
    FUNC8(button_gpio_num,
            wakeup_level == 0 ? GPIO_INTR_LOW_LEVEL : GPIO_INTR_HIGH_LEVEL);

    while (true) {
        /* Wake up in 2 seconds, or when button is pressed */
        FUNC4(2000000);
        FUNC3();

        /* Wait until GPIO goes high */
        if (FUNC11(button_gpio_num) == wakeup_level) {
            FUNC10("Waiting for GPIO%d to go high...\n", button_gpio_num);
            do {
                FUNC13(FUNC9(10));
            } while (FUNC11(button_gpio_num) == wakeup_level);
        }

        FUNC10("Entering light sleep\n");
        /* To make sure the complete line is printed before entering sleep mode,
         * need to wait until UART TX FIFO is empty:
         */
        FUNC12(CONFIG_ESP_CONSOLE_UART_NUM);

        /* Get timestamp before entering sleep */
        int64_t t_before_us = FUNC6();

        /* Enter sleep mode */
        FUNC2();
        /* Execution continues here after wakeup */

        /* Get timestamp after waking up from sleep */
        int64_t t_after_us = FUNC6();

        /* Determine wake up reason */
        const char* wakeup_reason;
        switch (FUNC5()) {
            case ESP_SLEEP_WAKEUP_TIMER:
                wakeup_reason = "timer";
                break;
            case ESP_SLEEP_WAKEUP_GPIO:
                wakeup_reason = "pin";
                break;
            default:
                wakeup_reason = "other";
                break;
        }

        FUNC10("Returned from light sleep, reason: %s, t=%lld ms, slept for %lld ms\n",
                wakeup_reason, t_after_us / 1000, (t_after_us - t_before_us) / 1000);
    }

}