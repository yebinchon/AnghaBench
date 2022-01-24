#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_4__ {int priority; int weight; int port; } ;
typedef  TYPE_1__ mdns_service_t ;
struct TYPE_5__ {char const* hostname; } ;

/* Variables and functions */
 char const* MDNS_DEFAULT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 TYPE_2__* _mdns_server ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int*,char const*,size_t) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(mdns_service_t * service, uint16_t priority, uint16_t weight, uint16_t port, const char * host, const char * domain)
{
    if (FUNC1(_mdns_server->hostname)) {
        return 0;
    }

    size_t our_host_len = FUNC4(_mdns_server->hostname);
    size_t our_len = 14 + our_host_len;

    size_t their_host_len = FUNC4(host);
    size_t their_domain_len = FUNC4(domain);
    size_t their_len = 9 + their_host_len + their_domain_len;

    if (their_len > our_len) {
        return 1;//they win
    } else if (their_len < our_len) {
        return -1;//we win
    }

    uint16_t our_index = 0;
    uint8_t our_data[our_len];
    FUNC0(our_data, &our_index, service->priority);
    FUNC0(our_data, &our_index, service->weight);
    FUNC0(our_data, &our_index, service->port);
    our_data[our_index++] = our_host_len;
    FUNC3(our_data + our_index, _mdns_server->hostname, our_host_len);
    our_index += our_host_len;
    our_data[our_index++] = 5;
    FUNC3(our_data + our_index, MDNS_DEFAULT_DOMAIN, 5);
    our_index += 5;
    our_data[our_index++] = 0;

    uint16_t their_index = 0;
    uint8_t their_data[their_len];
    FUNC0(their_data, &their_index, priority);
    FUNC0(their_data, &their_index, weight);
    FUNC0(their_data, &their_index, port);
    their_data[their_index++] = their_host_len;
    FUNC3(their_data + their_index, host, their_host_len);
    their_index += their_host_len;
    their_data[their_index++] = their_domain_len;
    FUNC3(their_data + their_index, domain, their_domain_len);
    their_index += their_domain_len;
    their_data[their_index++] = 0;

    int ret = FUNC2(our_data, their_data, our_len);
    if (ret > 0) {
        return -1;//we win
    } else if (ret < 0) {
        return 1;//they win
    }
    return 0;//same
}