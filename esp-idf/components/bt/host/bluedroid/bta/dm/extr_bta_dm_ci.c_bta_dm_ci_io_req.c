
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_OOB_DATA ;
typedef int tBTA_IO_CAP ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int auth_req; int oob_data; int io_cap; int bd_addr; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_CI_IO_REQ ;
typedef int tBTA_AUTH_REQ ;
typedef int BD_ADDR ;


 int BTA_DM_CI_IO_REQ_EVT ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void bta_dm_ci_io_req(BD_ADDR bd_addr, tBTA_IO_CAP io_cap, tBTA_OOB_DATA oob_data,
                      tBTA_AUTH_REQ auth_req)

{
    tBTA_DM_CI_IO_REQ *p_msg;

    if ((p_msg = (tBTA_DM_CI_IO_REQ *) osi_malloc(sizeof(tBTA_DM_CI_IO_REQ))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_CI_IO_REQ_EVT;
        bdcpy(p_msg->bd_addr, bd_addr);
        p_msg->io_cap = io_cap;
        p_msg->oob_data = oob_data;
        p_msg->auth_req = auth_req;
        bta_sys_sendmsg(p_msg);
    }
}
