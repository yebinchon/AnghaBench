#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct wpa2_rx_param {int len; int /*<<< orphan*/ * sa; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * bssid; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int ESP_ERR_NO_MEM ; 
 int ESP_FAIL ; 
 int /*<<< orphan*/  SIG_WPA2_RX ; 
 int WPA_ADDR_LEN ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 struct eap_sm* gEapSm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa2_rx_param*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa2_rx_param*) ; 

__attribute__((used)) static int FUNC6(u8 *src_addr, u8 *buf, u32 len, uint8_t *bssid)
{
    struct eap_sm *sm = gEapSm;

    if (!sm) {
        return ESP_FAIL;
    }
#ifdef USE_WPA2_TASK
    {
        struct wpa2_rx_param *param = (struct wpa2_rx_param *)os_zalloc(sizeof(struct wpa2_rx_param));   /* free in task */

        if (!param) {
            return ESP_ERR_NO_MEM;
        }

        param->buf = (u8 *)os_zalloc(len);   /* free in task */
        if (!param->buf) {
            os_free(param);
            return ESP_ERR_NO_MEM;
        }
        param->bssid = bssid;
        memcpy(param->buf, buf, len);
        param->len = len;
        memcpy(param->sa, src_addr, WPA_ADDR_LEN);

        wpa2_rxq_enqueue(param);
        return wpa2_post(SIG_WPA2_RX, 0);
    }
#else

    return FUNC0(src_addr, buf, len, bssid);
#endif
}