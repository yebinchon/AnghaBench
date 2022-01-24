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
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ; 
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
    esp_err_t err = FUNC2();
    if (err == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        FUNC0( FUNC1() );
        err = FUNC2();
    }
    FUNC0(err);
}