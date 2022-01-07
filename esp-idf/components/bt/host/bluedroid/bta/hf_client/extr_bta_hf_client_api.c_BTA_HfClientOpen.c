
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_SEC ;
struct TYPE_4__ {int layer_specific; int event; } ;
struct TYPE_5__ {int sec_mask; int bd_addr; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_HF_CLIENT_API_OPEN ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int BTA_HF_CLIENT_API_OPEN_EVT ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_HfClientOpen(UINT16 handle, BD_ADDR bd_addr, tBTA_SEC sec_mask)
{
    tBTA_HF_CLIENT_API_OPEN *p_buf;

    if ((p_buf = (tBTA_HF_CLIENT_API_OPEN *) osi_malloc(sizeof(tBTA_HF_CLIENT_API_OPEN))) != ((void*)0)) {
        p_buf->hdr.event = BTA_HF_CLIENT_API_OPEN_EVT;
        p_buf->hdr.layer_specific = handle;
        bdcpy(p_buf->bd_addr, bd_addr);
        p_buf->sec_mask = sec_mask;
        bta_sys_sendmsg(p_buf);
    }
}
