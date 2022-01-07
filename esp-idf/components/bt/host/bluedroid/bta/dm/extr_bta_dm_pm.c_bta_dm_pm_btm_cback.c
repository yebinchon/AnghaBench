
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_PM_STATUS ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int bd_addr; int hci_status; int value; int status; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_PM_BTM_STATUS ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int BTA_DM_PM_BTM_STATUS_EVT ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

__attribute__((used)) static void bta_dm_pm_btm_cback(BD_ADDR bd_addr, tBTM_PM_STATUS status, UINT16 value, UINT8 hci_status)
{
    tBTA_DM_PM_BTM_STATUS *p_buf;

    if ((p_buf = (tBTA_DM_PM_BTM_STATUS *) osi_malloc(sizeof(tBTA_DM_PM_BTM_STATUS))) != ((void*)0)) {
        p_buf->hdr.event = BTA_DM_PM_BTM_STATUS_EVT;
        p_buf->status = status;
        p_buf->value = value;
        p_buf->hci_status = hci_status;
        bdcpy(p_buf->bd_addr, bd_addr);
        bta_sys_sendmsg(p_buf);
    }
}
