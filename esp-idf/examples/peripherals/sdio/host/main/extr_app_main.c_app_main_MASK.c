#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  esp_slave_context_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int CONFIG_FREERTOS_HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 () ; 

void FUNC11(void)
{
    esp_slave_context_t context;
    esp_err_t err;

    //enable the power if on espressif SDIO master-slave board
    FUNC7();

    FUNC1(TAG, "host ready, start initializing slave...");

    err = FUNC6(&context);
    FUNC0(err);

    err = FUNC8(&context);
    FUNC0(err);

    uint32_t start, end;

    FUNC4(&context, 10);

    int times = 2;

    while (1) {
        FUNC3(&context);
        start = FUNC10();
        while (1) {
            FUNC5(&context);
            FUNC9(1);
            end = FUNC10();
            if ((end - start) * 1000 / CONFIG_FREERTOS_HZ > 5000) {
                break;
            }
        }
        if (--times == 0) {
            break;
        }
    };

    while (1) {
        FUNC2(&context);

        start = FUNC10();
        while (1) {
            FUNC5(&context);
            FUNC9(1);
            end = FUNC10();
            if ((end - start) * 1000 / CONFIG_FREERTOS_HZ > 2000) {
                break;
            }
        }
    }
}