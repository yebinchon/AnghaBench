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
typedef  int int32_t ;
typedef  int /*<<< orphan*/  esp_event_base_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  WIFI_EVENT_STA_DISCONNECTED 129 
#define  WIFI_EVENT_STA_START 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void* arg, esp_event_base_t event_base,
                                int32_t event_id, void* event_data)
{
    FUNC3("ev_handle_called.\n");
    switch(event_id) {
        case WIFI_EVENT_STA_START:
            FUNC0(TAG, "WIFI_EVENT_STA_START");
    //do not actually connect in test case
            //;
            break;
        case WIFI_EVENT_STA_DISCONNECTED:
            FUNC0(TAG, "WIFI_EVENT_STA_DISCONNECTED");
            FUNC1(FUNC2());
            break;
        default:
            break;
    }
    return ;
}