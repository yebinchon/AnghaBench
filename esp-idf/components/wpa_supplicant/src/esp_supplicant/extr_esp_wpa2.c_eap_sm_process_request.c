
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct wpabuf {int dummy; } ;
struct eap_sm {scalar_t__ current_identifier; struct wpabuf* lastRespData; int eapKeyDataLen; int * eap_method_priv; struct eap_method const* m; scalar_t__ eapKeyData; } ;
struct eap_method_ret {int dummy; } ;
struct eap_method {scalar_t__ vendor; scalar_t__ method; scalar_t__ (* getKey ) (struct eap_sm*,int *,int *) ;scalar_t__ (* isKeyAvailable ) (struct eap_sm*,int *) ;struct wpabuf* (* process ) (struct eap_sm*,int *,struct eap_method_ret*,struct wpabuf*) ;int * (* init ) (struct eap_sm*) ;} ;
struct eap_hdr {scalar_t__ identifier; int length; } ;


 scalar_t__ EAP_TYPE_EXPANDED ;
 scalar_t__ EAP_TYPE_IDENTITY ;
 scalar_t__ EAP_TYPE_NOTIFICATION ;
 scalar_t__ EAP_VENDOR_IETF ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_OK ;
 int MSG_ERROR ;
 int WPA2_ENT_EAP_STATE_FAIL ;
 int WPA_ERR_INVALID_BSSID ;
 scalar_t__ WPA_GET_BE24 (scalar_t__*) ;
 scalar_t__ WPA_GET_BE32 (scalar_t__*) ;
 size_t be_to_host16 (int ) ;
 int eap_deinit_prev_method (struct eap_sm*,char*) ;
 struct eap_method* eap_peer_get_eap_method (scalar_t__,scalar_t__) ;
 scalar_t__ eap_sm_build_identity_resp (struct eap_sm*,scalar_t__,int ) ;
 scalar_t__ eap_sm_build_nak (struct eap_sm*,scalar_t__,scalar_t__) ;
 int eap_sm_send_eapol (struct eap_sm*,struct wpabuf*) ;
 int os_free (scalar_t__) ;
 struct wpabuf* stub1 (struct eap_sm*,int *,struct eap_method_ret*,struct wpabuf*) ;
 int * stub2 (struct eap_sm*) ;
 struct wpabuf* stub3 (struct eap_sm*,int *,struct eap_method_ret*,struct wpabuf*) ;
 scalar_t__ stub4 (struct eap_sm*,int *) ;
 scalar_t__ stub5 (struct eap_sm*,int *,int *) ;
 int wpa2_set_eap_state (int) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;

int eap_sm_process_request(struct eap_sm *sm, struct wpabuf *reqData)
{
    size_t plen;
    u32 reqVendor, reqVendorMethod;
    u8 type, *pos;
    struct eap_hdr *ehdr;
    const struct eap_method *m = ((void*)0);
    struct wpabuf *resp = ((void*)0);
    struct eap_method_ret m_res;
    int ret = 0;

    if (reqData == ((void*)0) || wpabuf_len(reqData) < sizeof(*ehdr)) {
        return ESP_ERR_INVALID_ARG;
    }

    ehdr = (struct eap_hdr *)wpabuf_head(reqData);
    plen = be_to_host16(ehdr->length);
    if (plen > wpabuf_len(reqData)) {
        return ESP_FAIL;
    }

    if (ehdr->identifier == sm->current_identifier) {

        resp = sm->lastRespData;
        goto send_resp;
    }

    sm->current_identifier = ehdr->identifier;

    pos = (u8 *)(ehdr + 1);
    type = *pos++;
    if (type == EAP_TYPE_IDENTITY) {
        resp = (struct wpabuf *)eap_sm_build_identity_resp(sm, ehdr->identifier, 0);
        goto send_resp;
    } else if (type == EAP_TYPE_NOTIFICATION) {

        goto out;
    } else if (type == EAP_TYPE_EXPANDED) {
        if (plen < sizeof(*ehdr) + 8) {
            return ESP_FAIL;
        }
        reqVendor = WPA_GET_BE24(pos);
        pos += 3;
        reqVendorMethod = WPA_GET_BE32(pos);
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
        m = eap_peer_get_eap_method(reqVendor, reqVendorMethod);
        if (m == ((void*)0)) {
            goto build_nak;
        }
        if (sm->m) {
            eap_deinit_prev_method(sm, "GET_METHOD");
        }
        sm->m = m;
        sm->eap_method_priv = sm->m->init(sm);
        if (sm->eap_method_priv == ((void*)0)) {
            wpa_printf(MSG_ERROR, "Method private structure allocated failure\n");
            sm->m = ((void*)0);
            goto build_nak;
        }

        if (sm->m->process) {
            resp = sm->m->process(sm, sm->eap_method_priv, &m_res, reqData);
        }
    }

    if (sm->m->isKeyAvailable && sm->m->getKey &&
            sm->m->isKeyAvailable(sm, sm->eap_method_priv)) {
        if (sm->eapKeyData) {
            os_free(sm->eapKeyData);
        }
        sm->eapKeyData = sm->m->getKey(sm, sm->eap_method_priv,
                                       &sm->eapKeyDataLen);
    }
    goto send_resp;

build_nak:
    resp = (struct wpabuf *)eap_sm_build_nak(sm, type, ehdr->identifier);
    if (resp == ((void*)0)) {
        return ESP_FAIL;
    }
    ret = ESP_FAIL;

send_resp:
    if (resp == ((void*)0)) {
        wpa_printf(MSG_ERROR, "Response build fail, return.");
        return ESP_FAIL;
    }
    ret = eap_sm_send_eapol(sm, resp);
    if (ret == ESP_OK) {
        if (resp != sm->lastRespData) {
            wpabuf_free(sm->lastRespData);
            sm->lastRespData = resp;
        }
    } else {
        wpabuf_free(sm->lastRespData);
        sm->lastRespData = ((void*)0);
        wpabuf_free(resp);
        resp = ((void*)0);

        if (ret == WPA_ERR_INVALID_BSSID) {
            ret = WPA2_ENT_EAP_STATE_FAIL;
            wpa2_set_eap_state(WPA2_ENT_EAP_STATE_FAIL);
        }
    }
out:
    return ret;
}
