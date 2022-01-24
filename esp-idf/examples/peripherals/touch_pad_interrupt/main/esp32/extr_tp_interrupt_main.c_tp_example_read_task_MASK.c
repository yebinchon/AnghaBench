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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int TOUCH_PAD_MAX ; 
 int TOUCH_THRESH_PERCENT ; 
 int portTICK_PERIOD_MS ; 
 int* s_pad_activated ; 
 int* s_pad_init_val ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(void *pvParameter)
{
    static int show_message;
    int change_mode = 0;
    int filter_mode = 0;
    while (1) {
        if (filter_mode == 0) {
            //interrupt mode, enable touch interrupt
            FUNC4();
            for (int i = 0; i < TOUCH_PAD_MAX; i++) {
                if (s_pad_activated[i] == true) {
                    FUNC0(TAG, "T%d activated!", i);
                    // Wait a while for the pad being released
                    FUNC6(200 / portTICK_PERIOD_MS);
                    // Clear information on pad activation
                    s_pad_activated[i] = false;
                    // Reset the counter triggering a message
                    // that application is running
                    show_message = 1;
                }
            }
        } else {
            //filter mode, disable touch interrupt
            FUNC3();
            FUNC2();
            for (int i = 0; i < TOUCH_PAD_MAX; i++) {
                uint16_t value = 0;
                FUNC5(i, &value);
                if (value < s_pad_init_val[i] * TOUCH_THRESH_PERCENT / 100) {
                    FUNC0(TAG, "T%d activated!", i);
                    FUNC0(TAG, "value: %d; init val: %d", value, s_pad_init_val[i]);
                    FUNC6(200 / portTICK_PERIOD_MS);
                    // Reset the counter to stop changing mode.
                    change_mode = 1;
                    show_message = 1;
                }
            }
        }

        FUNC6(10 / portTICK_PERIOD_MS);

        // If no pad is touched, every couple of seconds, show a message
        // that application is running
        if (show_message++ % 500 == 0) {
            FUNC0(TAG, "Waiting for any pad being touched...");
        }
        // Change mode if no pad is touched for a long time.
        // We can compare the two different mode.
        if (change_mode++ % 2000 == 0) {
            filter_mode = !filter_mode;
            FUNC1(TAG, "Change mode...%s", filter_mode == 0 ? "interrupt mode" : "filter mode");
        }
    }
}