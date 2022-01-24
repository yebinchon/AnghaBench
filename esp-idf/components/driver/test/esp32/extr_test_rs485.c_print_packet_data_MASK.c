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
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_CRC ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static esp_err_t FUNC3(const char *str, uint8_t *buffer, uint16_t buffer_size)
{
    FUNC0( buffer != NULL);
    FUNC0( str != NULL);

    // Calculate the checksum of the buffer
    uint16_t crc16_calc = FUNC1(buffer, (buffer_size - 2));
    uint16_t crc16_in = ((uint16_t)(buffer[buffer_size - 1]) << 8) | buffer[buffer_size - 2];
    const char* state_str = (crc16_in != crc16_calc) ? "incorrect " : "correct ";
    // Print an array of data
    FUNC2("%s%s RS485 packet = [ ", str, state_str);
    for (int i = 0; i < buffer_size; i++) {
            FUNC2("0x%.2X ", (uint8_t)buffer[i]);
    }
    FUNC2(" ]\r\n");
    FUNC2("crc_in = 0x%.4X\r\n", (uint16_t)crc16_in);
    FUNC2("crc_calc = 0x%.4X\r\n", (uint16_t)crc16_calc);
    esp_err_t result = (crc16_in != crc16_calc) ? ESP_ERR_INVALID_CRC : ESP_OK;
    return result;
}