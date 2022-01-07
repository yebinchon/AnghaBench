
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bd_addr; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
struct TYPE_6__ {scalar_t__ link_role; } ;
typedef TYPE_2__ tACL_CONN ;
typedef int BOOLEAN ;


 scalar_t__ BTM_ROLE_MASTER ;
 int BT_TRANSPORT_BR_EDR ;
 TYPE_2__* btm_bda_to_acl (int ,int ) ;

__attribute__((used)) static BOOLEAN btm_sec_is_master(tBTM_SEC_DEV_REC *p_dev_rec)
{
    tACL_CONN *p = btm_bda_to_acl(p_dev_rec->bd_addr, BT_TRANSPORT_BR_EDR);
    return (p && (p->link_role == BTM_ROLE_MASTER));
}
