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
struct wps_sm {int /*<<< orphan*/  identity_len; int /*<<< orphan*/  identity; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_TYPE_IDENTITY ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int ESP_ERR_NO_MEM ; 
 int ESP_FAIL ; 
 int ESP_OK ; 
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAP_PACKET ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct wps_sm* gWpsSm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct wps_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct wps_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(u8 id)
{
    struct wps_sm *sm = gWpsSm;
    struct wpabuf *eap_buf = NULL;
    u8 bssid[6];
    u8 *buf = NULL;
    int len;
    int ret = ESP_OK;

    FUNC2(MSG_DEBUG, "wps send eapol id rsp");
    eap_buf = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_IDENTITY, sm->identity_len,
                            EAP_CODE_RESPONSE, id);
    if (!eap_buf) {
        ret = ESP_FAIL;
        goto _err;
    }

    ret = FUNC1(bssid);
    if (ret != 0) {
        FUNC2(MSG_ERROR, "bssid is empty!");
        return ESP_FAIL;
    }

    FUNC6(eap_buf, sm->identity, sm->identity_len);

    buf = FUNC7(sm, IEEE802_1X_TYPE_EAP_PACKET, FUNC4(eap_buf), FUNC5(eap_buf), (size_t *)&len, NULL);
    if (!buf) {
        ret = ESP_ERR_NO_MEM;
        goto _err;
    }

    ret = FUNC8(sm, bssid, ETH_P_EAPOL, buf, len);
    if (ret) {
        ret = ESP_FAIL;
        goto _err;
    }

_err:
    FUNC9(buf);
    FUNC3(eap_buf);
    return ret;
}