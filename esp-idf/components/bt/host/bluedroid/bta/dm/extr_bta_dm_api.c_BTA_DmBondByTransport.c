
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_TRANSPORT ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int transport; int bd_addr; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_BOND ;
typedef int BD_ADDR ;


 int BTA_DM_API_BOND_EVT ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmBondByTransport(BD_ADDR bd_addr, tBTA_TRANSPORT transport)
{
    tBTA_DM_API_BOND *p_msg;

    if ((p_msg = (tBTA_DM_API_BOND *) osi_malloc(sizeof(tBTA_DM_API_BOND))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_BOND_EVT;
        bdcpy(p_msg->bd_addr, bd_addr);
        p_msg->transport = transport;
        bta_sys_sendmsg(p_msg);
    }


}
