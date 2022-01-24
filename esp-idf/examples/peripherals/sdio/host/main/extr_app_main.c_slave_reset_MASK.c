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
typedef  int /*<<< orphan*/  esp_slave_context_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  JOB_RESET ; 
 int /*<<< orphan*/  SLAVE_INTR_NOTIFY ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

esp_err_t FUNC6(esp_slave_context_t *context)
{
    esp_err_t ret;
    FUNC1(TAG, "send reset to slave...");
    ret = FUNC4(context, 0, JOB_RESET, NULL);
    if (ret != ESP_OK) {
        return ret;
    }
    ret = FUNC2(context, FUNC0(SLAVE_INTR_NOTIFY));
    if (ret != ESP_OK) {
        return ret;
    }

    FUNC5(500 / portTICK_RATE_MS);
    ret = FUNC3(context);
    FUNC1(TAG, "slave io ready");
    return ret;
}