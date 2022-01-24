#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {char* hostname; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDNS_ANSWER_A ; 
 int /*<<< orphan*/  MDNS_ANSWER_A_TTL ; 
 char* MDNS_DEFAULT_DOMAIN ; 
 scalar_t__ MDNS_MAX_PACKET_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__*,char const**,int) ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int) ; 
 TYPE_1__* _mdns_server ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__,int) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static uint16_t FUNC5(uint8_t * packet, uint16_t * index, uint32_t ip, bool flush, bool bye)
{
    const char * str[2];
    uint16_t record_length = 0;
    uint8_t part_length;

    str[0] = _mdns_server->hostname;
    str[1] = MDNS_DEFAULT_DOMAIN;

    if (FUNC4(str[0])) {
        return 0;
    }


    part_length = FUNC0(packet, index, str, 2);
    if (!part_length) {
        return 0;
    }
    record_length += part_length;

    part_length = FUNC1(packet, index, MDNS_ANSWER_A, flush, bye?0:MDNS_ANSWER_A_TTL);
    if (!part_length) {
        return 0;
    }
    record_length += part_length;

    uint16_t data_len_location = *index - 2;

    if ((*index + 3) >= MDNS_MAX_PACKET_SIZE) {
        return 0;
    }
    FUNC2(packet, index, ip & 0xFF);
    FUNC2(packet, index, (ip >> 8) & 0xFF);
    FUNC2(packet, index, (ip >> 16) & 0xFF);
    FUNC2(packet, index, (ip >> 24) & 0xFF);
    FUNC3(packet, data_len_location, 4);

    record_length += 4;
    return record_length;
}