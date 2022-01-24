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
 int /*<<< orphan*/  BUF_SIZE ; 
 scalar_t__ ESP_OK ; 
 int PACKETS_NUMBER ; 
 int PACKET_READ_TICS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UART_NUM1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    FUNC5();
    uint8_t* slave_data = (uint8_t*) FUNC2(BUF_SIZE);
    uint16_t err_count = 0, good_count = 0;
    FUNC4("Start recieve loop.\r\n");
    FUNC10("Slave_ready");
    FUNC11("Master_started");
    for(int pack_count = 0; pack_count < PACKETS_NUMBER; pack_count++) {
        //Read slave_data from UART
        int len = FUNC7(UART_NUM1, slave_data, BUF_SIZE, (PACKET_READ_TICS * 2));
        //Write slave_data back to UART
        if (len > 2) {
            esp_err_t status = FUNC3("Received ", slave_data, len);

            // If received packet is correct then send it back
            if (status == ESP_OK) {
                FUNC9(UART_NUM1, (char*)slave_data, len);
                good_count++;
            } else {
                FUNC4("Incorrect packet received.\r\n");
                err_count++;
            }
        } else {
            FUNC4("Incorrect data packet[%d] received.\r\n", pack_count);
            err_count++;
        }
    }
    FUNC4("Test completed. Received packets = %d, errors = %d\r\n", good_count, err_count);
    // Wait for packet to be sent
    FUNC8(UART_NUM1, PACKET_READ_TICS);
    FUNC1(slave_data);
    FUNC6(UART_NUM1);
    FUNC0(err_count < 2);
}