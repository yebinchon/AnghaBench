#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_5__ {char* service; char* proto; int /*<<< orphan*/  port; int /*<<< orphan*/  weight; int /*<<< orphan*/  priority; } ;
typedef  TYPE_1__ mdns_service_t ;
struct TYPE_6__ {char* hostname; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDNS_ANSWER_SRV ; 
 int /*<<< orphan*/  MDNS_ANSWER_SRV_TTL ; 
 char* MDNS_DEFAULT_DOMAIN ; 
 int FUNC0 (int*,int*,char const**,int) ; 
 int FUNC1 (int*,int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int*,int*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (TYPE_1__*) ; 
 TYPE_2__* _mdns_server ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static uint16_t FUNC6(uint8_t * packet, uint16_t * index, mdns_service_t * service, bool flush, bool bye)
{
    const char * str[4];
    uint16_t record_length = 0;
    uint8_t part_length;

    if (service == NULL) {
        return 0;
    }

    str[0] = FUNC3(service);
    str[1] = service->service;
    str[2] = service->proto;
    str[3] = MDNS_DEFAULT_DOMAIN;

    if (!str[0]) {
        return 0;
    }

    part_length = FUNC0(packet, index, str, 4);
    if (!part_length) {
        return 0;
    }
    record_length += part_length;

    part_length = FUNC1(packet, index, MDNS_ANSWER_SRV, flush, bye?0:MDNS_ANSWER_SRV_TTL);
    if (!part_length) {
        return 0;
    }
    record_length += part_length;

    uint16_t data_len_location = *index - 2;

    part_length = 0;
    part_length += FUNC2(packet, index, service->priority);
    part_length += FUNC2(packet, index, service->weight);
    part_length += FUNC2(packet, index, service->port);
    if (part_length != 6) {
        return 0;
    }

    str[0] = _mdns_server->hostname;
    str[1] = MDNS_DEFAULT_DOMAIN;

    if (FUNC5(str[0])) {
        return 0;
    }

    part_length = FUNC0(packet, index, str, 2);
    if (!part_length) {
        return 0;
    }
    FUNC4(packet, data_len_location, part_length + 6);

    record_length += part_length + 6;
    return record_length;
}