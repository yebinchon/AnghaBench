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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct wpabuf {int dummy; } ;
struct eap_sm {scalar_t__ current_identifier; struct wpabuf* lastRespData; int /*<<< orphan*/  eapKeyDataLen; int /*<<< orphan*/ * eap_method_priv; struct eap_method const* m; scalar_t__ eapKeyData; } ;
struct eap_method_ret {int dummy; } ;
struct eap_method {scalar_t__ vendor; scalar_t__ method; scalar_t__ (* getKey ) (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;scalar_t__ (* isKeyAvailable ) (struct eap_sm*,int /*<<< orphan*/ *) ;struct wpabuf* (* process ) (struct eap_sm*,int /*<<< orphan*/ *,struct eap_method_ret*,struct wpabuf*) ;int /*<<< orphan*/ * (* init ) (struct eap_sm*) ;} ;
struct eap_hdr {scalar_t__ identifier; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 scalar_t__ EAP_TYPE_EXPANDED ; 
 scalar_t__ EAP_TYPE_IDENTITY ; 
 scalar_t__ EAP_TYPE_NOTIFICATION ; 
 scalar_t__ EAP_VENDOR_IETF ; 
 int ESP_ERR_INVALID_ARG ; 
 int ESP_FAIL ; 
 int ESP_OK ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int WPA2_ENT_EAP_STATE_FAIL ; 
 int WPA_ERR_INVALID_BSSID ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,char*) ; 
 struct eap_method* FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (struct eap_sm*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct eap_sm*,scalar_t__,scalar_t__) ; 
 int FUNC7 (struct eap_sm*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 struct wpabuf* FUNC9 (struct eap_sm*,int /*<<< orphan*/ *,struct eap_method_ret*,struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC10 (struct eap_sm*) ; 
 struct wpabuf* FUNC11 (struct eap_sm*,int /*<<< orphan*/ *,struct eap_method_ret*,struct wpabuf*) ; 
 scalar_t__ FUNC12 (struct eap_sm*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf*) ; 
 scalar_t__ FUNC17 (struct wpabuf*) ; 
 size_t FUNC18 (struct wpabuf*) ; 

int FUNC19(struct eap_sm *sm, struct wpabuf *reqData)
{
    size_t plen;
    u32 reqVendor, reqVendorMethod;
    u8 type, *pos;
    struct eap_hdr *ehdr;
    const struct eap_method *m = NULL;
    struct wpabuf *resp = NULL;
    struct eap_method_ret m_res;
    int ret = 0;

    if (reqData == NULL || FUNC18(reqData) < sizeof(*ehdr)) {
        return ESP_ERR_INVALID_ARG;
    }

    ehdr = (struct eap_hdr *)FUNC17(reqData);
    plen = FUNC2(ehdr->length);
    if (plen > FUNC18(reqData)) {
        return ESP_FAIL;
    }

    if (ehdr->identifier == sm->current_identifier) {
        /*Retransmit*/
        resp = sm->lastRespData;
        goto send_resp;
    }

    sm->current_identifier = ehdr->identifier;

    pos = (u8 *)(ehdr + 1);
    type = *pos++;
    if (type == EAP_TYPE_IDENTITY) {
        resp = (struct wpabuf *)FUNC5(sm, ehdr->identifier, 0);
        goto send_resp;
    } else if (type == EAP_TYPE_NOTIFICATION) {
        /*Ignore*/
        goto out;
    } else if (type == EAP_TYPE_EXPANDED) {
        if (plen < sizeof(*ehdr) + 8) {
            return ESP_FAIL;
        }
        reqVendor = FUNC0(pos);
        pos += 3;
        reqVendorMethod = FUNC1(pos);
    } else {
        reqVendor = EAP_VENDOR_IETF;
        reqVendorMethod = type;
    }

    if (sm->m && sm->m->process && sm->eap_method_priv &&
            reqVendor == sm->m->vendor &&
            reqVendorMethod == sm->m->method) {
        resp = sm->m->process(sm, sm->eap_method_priv,
                              &m_res, reqData);
    } else {
        m = FUNC4(reqVendor, reqVendorMethod);
        if (m == NULL) {
            goto build_nak;
        }
        if (sm->m) {
            FUNC3(sm, "GET_METHOD");
        }
        sm->m = m;
        sm->eap_method_priv = sm->m->init(sm);
        if (sm->eap_method_priv == NULL) {
            FUNC15(MSG_ERROR, "Method private structure allocated failure\n");
            sm->m = NULL;
            goto build_nak;
        }

        if (sm->m->process) {
            resp = sm->m->process(sm, sm->eap_method_priv, &m_res, reqData);
        }
    }

    if (sm->m->isKeyAvailable && sm->m->getKey &&
            sm->m->isKeyAvailable(sm, sm->eap_method_priv)) {
        if (sm->eapKeyData) {
            FUNC8(sm->eapKeyData);
        }
        sm->eapKeyData = sm->m->getKey(sm, sm->eap_method_priv,
                                       &sm->eapKeyDataLen);
    }
    goto send_resp;

build_nak:
    resp = (struct wpabuf *)FUNC6(sm, type, ehdr->identifier);
    if (resp == NULL) {
        return ESP_FAIL;
    }
    ret = ESP_FAIL;

send_resp:
    if (resp == NULL) {
        FUNC15(MSG_ERROR, "Response build fail, return.");
        return ESP_FAIL;
    }
    ret = FUNC7(sm, resp);
    if (ret == ESP_OK) {
        if (resp != sm->lastRespData) {
            FUNC16(sm->lastRespData);
            sm->lastRespData = resp;
        }
    } else {
        FUNC16(sm->lastRespData);
        sm->lastRespData = NULL;
        FUNC16(resp);
        resp = NULL;

        if (ret == WPA_ERR_INVALID_BSSID) {
            ret = WPA2_ENT_EAP_STATE_FAIL;
            FUNC14(WPA2_ENT_EAP_STATE_FAIL);
        }
    }
out:
    return ret;
}