
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_addr {int dummy; } ;
typedef int boolean_t ;
struct TYPE_2__ {struct in_addr client_ip; } ;


 int FALSE ;
 TYPE_1__* S_netboot_info_p ;
 int TRUE ;

boolean_t
netboot_iaddr(struct in_addr * iaddr_p)
{
    if (S_netboot_info_p == ((void*)0))
 return (FALSE);

    *iaddr_p = S_netboot_info_p->client_ip;
    return (TRUE);
}
