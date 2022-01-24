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
typedef  int /*<<< orphan*/  smartconfig_start_config_t ;
typedef  int EventBits_t ;

/* Variables and functions */
 int CONNECTED_BIT ; 
 int ESPTOUCH_DONE_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SC_TYPE_ESPTOUCH ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  s_wifi_event_group ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void * parm)
{
    EventBits_t uxBits;
    FUNC0( FUNC3(SC_TYPE_ESPTOUCH) );
    smartconfig_start_config_t cfg = FUNC2();
    FUNC0( FUNC4(&cfg) );
    while (1) {
        uxBits = FUNC7(s_wifi_event_group, CONNECTED_BIT | ESPTOUCH_DONE_BIT, true, false, portMAX_DELAY); 
        if(uxBits & CONNECTED_BIT) {
            FUNC1(TAG, "WiFi Connected to ap");
        }
        if(uxBits & ESPTOUCH_DONE_BIT) {
            FUNC1(TAG, "smartconfig over");
            FUNC5();
            FUNC6(NULL);
        }
    }
}