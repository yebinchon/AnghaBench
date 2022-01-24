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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ MDNS_ANSWER_A ; 
 scalar_t__ MDNS_ANSWER_AAAA ; 
 scalar_t__ MDNS_ANSWER_PTR ; 
 scalar_t__ MDNS_ANSWER_SRV ; 
 scalar_t__ MDNS_ANSWER_TXT ; 
 scalar_t__ MDNS_CLASS_IN ; 
 scalar_t__ MDNS_CLASS_IN_FLUSH_CACHE ; 
 scalar_t__ MDNS_MAX_PACKET_SIZE ; 
 scalar_t__ MDNS_TYPE_A ; 
 scalar_t__ MDNS_TYPE_AAAA ; 
 scalar_t__ MDNS_TYPE_PTR ; 
 scalar_t__ MDNS_TYPE_SRV ; 
 scalar_t__ MDNS_TYPE_TXT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint8_t FUNC2(uint8_t * packet, uint16_t * index, uint8_t type, bool flush, uint32_t ttl)
{
    if ((*index + 10) >= MDNS_MAX_PACKET_SIZE) {
        return 0;
    }
    uint16_t clas = MDNS_CLASS_IN;
    if (flush) {
        clas = MDNS_CLASS_IN_FLUSH_CACHE;
    }
    if (type == MDNS_ANSWER_PTR) {
        FUNC0(packet, index, MDNS_TYPE_PTR);
        FUNC0(packet, index, clas);
    } else if (type == MDNS_ANSWER_TXT) {
        FUNC0(packet, index, MDNS_TYPE_TXT);
        FUNC0(packet, index, clas);
    } else if (type == MDNS_ANSWER_SRV) {
        FUNC0(packet, index, MDNS_TYPE_SRV);
        FUNC0(packet, index, clas);
    } else if (type == MDNS_ANSWER_A) {
        FUNC0(packet, index, MDNS_TYPE_A);
        FUNC0(packet, index, clas);
    } else if (type == MDNS_ANSWER_AAAA) {
        FUNC0(packet, index, MDNS_TYPE_AAAA);
        FUNC0(packet, index, clas);
    } else {
        return 0;
    }
    FUNC1(packet, index, ttl);
    FUNC0(packet, index, 0);
    return 10;
}