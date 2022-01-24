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
 int /*<<< orphan*/  ESP_APPTRACE_DEST_TRAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  s_events_buf ; 
 scalar_t__ s_events_buf_filled ; 

void FUNC3(unsigned long min_sz, unsigned long tmo)
{
    esp_err_t res;
    if (s_events_buf_filled > 0) {
      res = FUNC2(ESP_APPTRACE_DEST_TRAX, s_events_buf, s_events_buf_filled, tmo);
      if (res != ESP_OK) {
        FUNC0(TAG, "Failed to flush buffered events (%d)!\n", res);
      }
    }
    // flush even if we failed to write buffered events, because no new events will be sent after STOP
    res = FUNC1(ESP_APPTRACE_DEST_TRAX, min_sz, tmo);
    if (res != ESP_OK) {
      FUNC0(TAG, "Failed to flush apptrace data (%d)!\n", res);
    }
    s_events_buf_filled = 0;
}