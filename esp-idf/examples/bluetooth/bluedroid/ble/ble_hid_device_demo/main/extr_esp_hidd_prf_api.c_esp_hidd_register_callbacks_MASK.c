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
typedef  int /*<<< orphan*/ * esp_hidd_event_cb_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_2__ {int /*<<< orphan*/ * hidd_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATTRAY_APP_ID ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  HIDD_APP_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ hidd_le_env ; 
 int /*<<< orphan*/  FUNC1 () ; 

esp_err_t FUNC2(esp_hidd_event_cb_t callbacks)
{
    esp_err_t hidd_status;

    if(callbacks != NULL) {
   	    hidd_le_env.hidd_cb = callbacks;
    } else {
        return ESP_FAIL;
    }

    if((hidd_status = FUNC1()) != ESP_OK) {
        return hidd_status;
    }

    FUNC0(BATTRAY_APP_ID);
    
    if((hidd_status = FUNC0(HIDD_APP_ID)) != ESP_OK) {
        return hidd_status;
    }
   
    return hidd_status;
}