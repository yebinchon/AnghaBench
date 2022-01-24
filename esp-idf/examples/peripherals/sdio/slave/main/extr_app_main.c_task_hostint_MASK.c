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
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int JOB_RESET ; 
 int /*<<< orphan*/  TAG ; 
 int portTICK_RATE_MS ; 
 int s_job ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static esp_err_t FUNC3(void)
{
    for(int i = 0; i < 8; i++) {
        FUNC0(TAG, "send intr: %d", i);
        FUNC1(i);
        //check reset for quick response to RESET signal
        if (s_job & JOB_RESET) break;
        FUNC2(500/portTICK_RATE_MS);
    }
    return ESP_OK;
}