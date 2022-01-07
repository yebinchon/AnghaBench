
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16_t ;
struct TYPE_2__ {int acl_mtu; } ;


 TYPE_1__* hci_dev ;

u16_t lp_pdu_maxsize()
{
 return hci_dev->acl_mtu;
}
