#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* buffer; int /*<<< orphan*/  uart_port; } ;
typedef  TYPE_1__ esp_gps_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  GPS_TAG ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static void FUNC5(esp_gps_t *esp_gps)
{
    int pos = FUNC3(esp_gps->uart_port);
    if (pos != -1) {
        /* read one line(include '\n') */
        int read_len = FUNC4(esp_gps->uart_port, esp_gps->buffer, pos + 1, 100 / portTICK_PERIOD_MS);
        /* make sure the line is a standard string */
        esp_gps->buffer[read_len] = '\0';
        /* Send new line to handle */
        if (FUNC1(esp_gps, read_len + 1) != ESP_OK) {
            FUNC0(GPS_TAG, "GPS decode line failed");
        }
    } else {
        FUNC0(GPS_TAG, "Pattern Queue Size too small");
        FUNC2(esp_gps->uart_port);
    }
}