
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int layer_specific; int event; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_AG_CI_RX_WRITE ;
typedef int UINT16 ;


 int APPL_TRACE_ERROR (char*,int) ;
 int BTA_AG_CI_RX_WRITE_EVT ;
 int BT_DEFAULT_BUFFER_SIZE ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;
 int strncpy (char*,char*,int) ;

void bta_ag_ci_rx_write(UINT16 handle, char *p_data, UINT16 len)
{
    tBTA_AG_CI_RX_WRITE *p_buf;
    UINT16 len_remaining = len;
    char *p_data_area;

    if (len > (BT_DEFAULT_BUFFER_SIZE - sizeof(tBTA_AG_CI_RX_WRITE) - 1)) {
        len = BT_DEFAULT_BUFFER_SIZE - sizeof(tBTA_AG_CI_RX_WRITE) - 1;
    }

    while (len_remaining) {
        if (len_remaining < len) {
            len = len_remaining;
        }
        if ((p_buf = (tBTA_AG_CI_RX_WRITE *) osi_malloc((UINT16)(sizeof(tBTA_AG_CI_RX_WRITE) + len + 1))) != ((void*)0)) {
            p_buf->hdr.event = BTA_AG_CI_RX_WRITE_EVT;
            p_buf->hdr.layer_specific = handle;
            p_data_area = (char *)(p_buf+1);
            strncpy(p_data_area, p_data, len);
            p_data_area[len] = 0;
            bta_sys_sendmsg(p_buf);
        } else {
            APPL_TRACE_ERROR("ERROR: Unable to allocate buffer to hold AT response code. len=%i", len);
            break;
        }
        len_remaining-=len;
        p_data+=len;
    }
}
