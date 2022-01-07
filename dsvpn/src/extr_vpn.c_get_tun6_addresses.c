
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* local_tun_ip; char* remote_tun_ip; char* local_tun_ip6; char* remote_tun_ip6; } ;
typedef TYPE_1__ Context ;


 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void get_tun6_addresses(Context *context)
{
    static char local_tun_ip6[40], remote_tun_ip6[40];

    snprintf(local_tun_ip6, sizeof local_tun_ip6, "64:ff9b::%s", context->local_tun_ip);
    snprintf(remote_tun_ip6, sizeof remote_tun_ip6, "64:ff9b::%s", context->remote_tun_ip);
    context->local_tun_ip6 = local_tun_ip6;
    context->remote_tun_ip6 = remote_tun_ip6;
}
