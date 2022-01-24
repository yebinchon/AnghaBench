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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t FUNC5(uint8_t *buffer, size_t length)
{
    FUNC1( buffer != NULL);
    // Packet is too short
    if (length < 4) {
        return 0;
    }
    for (int i = 0; i < length; i += 4) {
        uint32_t random = FUNC2();
        FUNC4(buffer + i, &random, FUNC0(length - i, 4));
    }
    // Get checksum of the buffer
    uint16_t crc = FUNC3((uint8_t*)buffer, (length - 2));
    // Apply checksum bytes into packet
    buffer[length - 2] = (uint8_t)(crc & 0xFF);         // Set Low byte CRC
    buffer[length - 1] = (uint8_t)(crc >> 8);           // Set High byte CRC
    return crc;
}