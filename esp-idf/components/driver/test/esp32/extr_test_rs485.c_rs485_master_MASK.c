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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int BUF_SIZE ; 
 scalar_t__ ESP_OK ; 
 int PACKETS_NUMBER ; 
 int PACKET_READ_TICS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UART_NUM1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    uint16_t err_count = 0, good_count = 0;
    FUNC6();
    uint8_t* master_buffer = (uint8_t*) FUNC3(BUF_SIZE);
    uint8_t* slave_buffer = (uint8_t*) FUNC3(BUF_SIZE);
    // The master test case should be synchronized with slave
    FUNC11("Slave_ready");
    FUNC10("Master_started");
    FUNC5("Start recieve loop.\r\n");
    for(int i = 0; i < PACKETS_NUMBER; i++) {
        // Form random buffer with CRC16
        FUNC1(master_buffer, BUF_SIZE);
        // Print created packet for debugging
        esp_err_t status = FUNC4("Send ", master_buffer, BUF_SIZE);
        FUNC0(status == ESP_OK);
        FUNC9(UART_NUM1, (char*)master_buffer, BUF_SIZE);
        // Read translated packet from slave
        int len = FUNC8(UART_NUM1, slave_buffer, BUF_SIZE, (PACKET_READ_TICS * 2));
        // Check if the received packet is too short
        if (len > 2) {
            // Print received packet and check checksum
            esp_err_t status = FUNC4("Received ", slave_buffer, len);
            if (status == ESP_OK) {
                good_count++;
                FUNC5("Received: %d\r\n", good_count);
            } else {
                err_count++;
                FUNC5("Errors: %d\r\n", err_count);
            }
        }
        else {
            FUNC5("Incorrect answer from slave.\r\n");
            err_count++;
        }
    }
    // Free the buffer and delete driver at the end
    FUNC2(master_buffer);
    FUNC7(UART_NUM1);
    FUNC0(err_count <= 1);
    FUNC5("Test completed. Received packets = %d, errors = %d\r\n", (uint16_t)good_count, (uint16_t)err_count);
}