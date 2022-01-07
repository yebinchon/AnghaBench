
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wps_rx_param {int len; int * sa; int * buf; } ;


 int ESP_ERR_NO_MEM ;
 int ESP_FAIL ;
 int SIG_WPS_RX ;
 int WPS_ADDR_LEN ;
 int gWpsSm ;
 int memcpy (int *,int *,int) ;
 int os_free (struct wps_rx_param*) ;
 scalar_t__ os_zalloc (int) ;
 int wps_post (int ,int ) ;
 int wps_rxq_enqueue (struct wps_rx_param*) ;
 int wps_sm_rx_eapol_internal (int *,int *,int) ;

int wps_sm_rx_eapol(u8 *src_addr, u8 *buf, u32 len)
{
    if (!gWpsSm) {
        return ESP_FAIL;
    }
    return wps_sm_rx_eapol_internal(src_addr, buf, len);

}
