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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,int const,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,scalar_t__*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_LOG_INFO ; 
 scalar_t__ RX_BUF_SIZE ; 
 int /*<<< orphan*/  UART_NUM_1 ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int portTICK_RATE_MS ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC6(void *arg)
{
    static const char *RX_TASK_TAG = "RX_TASK";
    FUNC2(RX_TASK_TAG, ESP_LOG_INFO);
    uint8_t* data = (uint8_t*) FUNC4(RX_BUF_SIZE+1);
    while (1) {
        const int rxBytes = FUNC5(UART_NUM_1, data, RX_BUF_SIZE, 1000 / portTICK_RATE_MS);
        if (rxBytes > 0) {
            data[rxBytes] = 0;
            FUNC0(RX_TASK_TAG, "Read %d bytes: '%s'", rxBytes, data);
            FUNC1(RX_TASK_TAG, data, rxBytes, ESP_LOG_INFO);
        }
    }
    FUNC3(data);
}