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
struct wps_sm {int dummy; } ;
struct wpabuf {int dummy; } ;
typedef  enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_VENDOR_WFA ; 
 int ESP_ERR_NO_MEM ; 
 int ESP_FAIL ; 
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAP_PACKET ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int WSC_FRAG_ACK ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct wps_sm* gWpsSm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int) ; 
 int /*<<< orphan*/ * FUNC7 (struct wps_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct wps_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(u8 id)
{
    struct wps_sm *sm = gWpsSm;
    struct wpabuf *eap_buf = NULL;
    u8 bssid[6];
    u8 *buf;
    int len;
    int ret = 0;
    enum wsc_op_code opcode = WSC_FRAG_ACK;

    FUNC2(MSG_DEBUG, "send frag ack id:%d", id);

    if (!sm) {
        return ESP_FAIL;
    }

    ret = FUNC1(bssid);
    if (ret != 0) {
        FUNC2(MSG_ERROR, "bssid is empty!");
        return ret;
    }

    eap_buf = FUNC0(EAP_VENDOR_WFA, 0x00000001, 2, EAP_CODE_RESPONSE, id);
    if (!eap_buf) {
        ret = ESP_ERR_NO_MEM;
        goto _err;
    }

    FUNC6(eap_buf, opcode);
    FUNC6(eap_buf, 0x00); /* flags */

    buf = FUNC7(sm, IEEE802_1X_TYPE_EAP_PACKET, FUNC4(eap_buf), FUNC5(eap_buf), (size_t *)&len, NULL);
    if (!buf) {
        ret = ESP_ERR_NO_MEM;
        goto _err;
    }

    ret = FUNC8(sm, bssid, ETH_P_EAPOL, buf, len);
    FUNC9(buf);
    if (ret) {
        ret = ESP_ERR_NO_MEM;
        goto _err;
    }

_err:
    FUNC3(eap_buf);
    return ret;
}