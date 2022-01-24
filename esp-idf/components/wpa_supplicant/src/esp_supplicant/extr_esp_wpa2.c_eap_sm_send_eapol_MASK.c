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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int ESP_ERR_NO_MEM ; 
 int ESP_FAIL ; 
 int ESP_OK ; 
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAP_PACKET ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPA_ERR_INVALID_BSSID ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct eap_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 

int FUNC7(struct eap_sm *sm, struct wpabuf *resp)
{
    size_t outlen;
    int ret;
    u8 *outbuf = NULL;

    u8 bssid[6];
    ret = FUNC0(bssid);

    if (ret != 0) {
        FUNC4(MSG_DEBUG, "bssid is empty \n");
        return WPA_ERR_INVALID_BSSID;
    }

    outbuf = FUNC1(sm, IEEE802_1X_TYPE_EAP_PACKET,
                                 FUNC5(resp), FUNC6(resp),
                                 &outlen, NULL);
    if (!outbuf) {
        return ESP_ERR_NO_MEM;
    }

    ret = FUNC2(sm, bssid, ETH_P_EAPOL, outbuf, outlen);
    FUNC3(outbuf);
    if (ret) {
        return ESP_FAIL;
    }

    return ESP_OK;
}