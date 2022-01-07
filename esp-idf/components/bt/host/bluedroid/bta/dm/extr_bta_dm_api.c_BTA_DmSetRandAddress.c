
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTA_SET_RAND_ADDR_CBACK ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int * p_set_rand_addr_cback; int addr_type; TYPE_1__ hdr; int address; } ;
typedef TYPE_2__ tBTA_DM_APT_SET_DEV_ADDR ;
typedef int BD_ADDR ;


 int APPL_TRACE_API (char*) ;
 int BD_ADDR_LEN ;
 int BLE_ADDR_RANDOM ;
 int BTA_DM_API_SET_RAND_ADDR_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

extern void BTA_DmSetRandAddress(BD_ADDR rand_addr, tBTA_SET_RAND_ADDR_CBACK *p_set_rand_addr_cback)
{
    tBTA_DM_APT_SET_DEV_ADDR *p_msg;
    APPL_TRACE_API("set the random address ");
    if ((p_msg = (tBTA_DM_APT_SET_DEV_ADDR *) osi_malloc(sizeof(tBTA_DM_APT_SET_DEV_ADDR))) != ((void*)0)) {
        memset(p_msg, 0, sizeof(tBTA_DM_APT_SET_DEV_ADDR));
        memcpy(p_msg->address, rand_addr, BD_ADDR_LEN);
        p_msg->hdr.event = BTA_DM_API_SET_RAND_ADDR_EVT;
        p_msg->addr_type = BLE_ADDR_RANDOM;
        p_msg->p_set_rand_addr_cback = p_set_rand_addr_cback;

        bta_sys_sendmsg(p_msg);
    }
}
