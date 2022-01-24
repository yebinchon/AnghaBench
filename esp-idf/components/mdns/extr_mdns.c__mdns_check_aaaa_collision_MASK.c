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
typedef  int /*<<< orphan*/  uint8_t ;
struct esp_ip6_addr {int /*<<< orphan*/  addr; } ;
typedef  scalar_t__ mdns_if_t ;
struct TYPE_4__ {scalar_t__ addr; } ;
typedef  TYPE_1__ esp_ip6_addr_t ;

/* Variables and functions */
 scalar_t__ MDNS_IF_MAX ; 
 int /*<<< orphan*/  _MDNS_SIZEOF_IP6_ADDR ; 
 scalar_t__ FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct esp_ip6_addr*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(esp_ip6_addr_t * ip, mdns_if_t tcpip_if)
{
    struct esp_ip6_addr if_ip6;
    struct esp_ip6_addr other_ip6;
    if (FUNC0(*ip)) {
        return 1;//denial! they win
    }
    if (FUNC4(FUNC2(tcpip_if), &if_ip6)) {
        return 1;//they win
    }
    int ret = FUNC5((uint8_t*)&if_ip6.addr, (uint8_t*)ip->addr, _MDNS_SIZEOF_IP6_ADDR);
    if (ret > 0) {
        return -1;//we win
    } else if (ret < 0) {
        //is it the other interface?
        mdns_if_t other_if = FUNC3 (tcpip_if);
        if (other_if == MDNS_IF_MAX) {
            return 1;//AP interface! They win
        }
        if (FUNC4(FUNC2(other_if), &other_ip6)) {
            return 1;//IPv6 not active! They win
        }
        if (FUNC5((uint8_t*)&other_ip6.addr, (uint8_t*)ip->addr, _MDNS_SIZEOF_IP6_ADDR)) {
            return 1;//IPv6 not ours! They win
        }
        FUNC1(tcpip_if);
        return 2;//they win
    }
    return 0;//same
}