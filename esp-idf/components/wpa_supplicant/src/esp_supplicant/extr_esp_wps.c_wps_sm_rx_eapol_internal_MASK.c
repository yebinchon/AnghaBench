#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct wps_sm {int /*<<< orphan*/  wps_timeout_timer; TYPE_1__* wps; int /*<<< orphan*/  current_identifier; int /*<<< orphan*/  wps_eapol_start_timer; } ;
struct ieee802_1x_hdr {int type; int /*<<< orphan*/  version; int /*<<< orphan*/  length; } ;
struct eap_hdr {int code; int /*<<< orphan*/  identifier; int /*<<< orphan*/  length; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAPOL_VERSION ; 
#define  EAP_CODE_FAILURE 133 
#define  EAP_CODE_REQUEST 132 
#define  EAP_CODE_RESPONSE 131 
#define  EAP_CODE_SUCCESS 130 
#define  EAP_TYPE_EXPANDED 129 
#define  EAP_TYPE_IDENTITY 128 
 int ESP_FAIL ; 
 int ESP_OK ; 
 int IEEE802_1X_TYPE_EAP_PACKET ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  WIFI_EVENT_STA_WPS_ER_FAILED ; 
 int WPS_DONE ; 
 int WPS_FAILURE ; 
 int WPS_FRAGMENT ; 
 int WPS_IGNORE ; 
 int /*<<< orphan*/  WPS_STATUS_DISABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct wps_sm* gWpsSm ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 () ; 
 int FUNC8 (int*,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(u8 *src_addr, u8 *buf, u32 len)
{
    struct wps_sm *sm = gWpsSm;
    u32 plen, data_len, eap_len;
    struct ieee802_1x_hdr *hdr;
    struct eap_hdr *ehdr;
    u8 *tmp;
    u8 eap_code;
    u8 eap_type;
    int ret = ESP_FAIL;
    enum wps_process_res res = WPS_DONE;

    if (!gWpsSm) {
        return ESP_FAIL;
    }

    if (len < sizeof(*hdr) + sizeof(*ehdr)) {
#ifdef DEBUG_PRINT
        wpa_printf(MSG_DEBUG,  "WPA: EAPOL frame too short to be a WPA "
                   "EAPOL-Key (len %lu, expecting at least %lu)",
                   (unsigned long) len,
                   (unsigned long) sizeof(*hdr) + sizeof(*ehdr));
#endif
        return ESP_OK;
    }

    tmp = buf;

    hdr = (struct ieee802_1x_hdr *) tmp;
    ehdr = (struct eap_hdr *) (hdr + 1);
    plen = FUNC0(hdr->length);
    data_len = plen + sizeof(*hdr);
    eap_len = FUNC0(ehdr->length);

#ifdef DEBUG_PRINT
    wpa_printf(MSG_DEBUG, "IEEE 802.1X RX: version=%d type=%d length=%d",
               hdr->version, hdr->type, plen);
#endif

    if (hdr->version < EAPOL_VERSION) {
        /* TODO: backwards compatibility */
    }
    if (hdr->type != IEEE802_1X_TYPE_EAP_PACKET) {
#ifdef DEBUG_PRINT
        wpa_printf(MSG_DEBUG, "WPS: EAP frame (type %u) discarded, "
                   "not a EAP PACKET frame", hdr->type);
#endif
        ret = 0;
        goto out;
    }
    if (plen > len - sizeof(*hdr) || plen < sizeof(*ehdr)) {
#ifdef DEBUG_PRINT
        wpa_printf(MSG_DEBUG, "WPA: EAPOL frame payload size %lu "
                   "invalid (frame size %lu)",
                   (unsigned long) plen, (unsigned long) len);
#endif
        ret = 0;
        goto out;
    }

    FUNC5(MSG_MSGDUMP, "WPA: RX EAPOL-EAP PACKET", tmp, len);

    if (data_len < len) {
#ifdef DEBUG_PRINT
        wpa_printf(MSG_DEBUG, "WPA: ignoring %lu bytes after the IEEE "
                   "802.1X data", (unsigned long) len - data_len);
#endif
    }

    if (eap_len != plen) {
#ifdef DEBUG_PRINT
        wpa_printf(MSG_DEBUG, "WPA: EAPOL length %lu "
                   "invalid (eapol length %lu)",
                   (unsigned long) eap_len, (unsigned long) plen);
#endif
        ret = 0;
        goto out;
    }

    eap_code = ehdr->code;
    switch (eap_code) {
    case EAP_CODE_SUCCESS:
        FUNC6(MSG_DEBUG, "error: receive eapol success frame!");
        ret = 0;
        break;
    case EAP_CODE_FAILURE:
        FUNC6(MSG_DEBUG, "receive eap code failure!");
        ret = FUNC7();
        break;
    case EAP_CODE_RESPONSE:
        FUNC6(MSG_DEBUG, "error: receive eapol response frame!");
        ret = 0;
        break;
    case EAP_CODE_REQUEST: {
        eap_type = ((u8 *)ehdr)[sizeof(*ehdr)];
        switch (eap_type) {
        case EAP_TYPE_IDENTITY:
            FUNC6(MSG_DEBUG, "=========identity===========");
            sm->current_identifier = ehdr->identifier;
            FUNC4(&sm->wps_eapol_start_timer);
            FUNC6(MSG_DEBUG,  "WPS: Build EAP Identity.");
            ret = FUNC9(ehdr->identifier);
            FUNC3(&sm->wps_eapol_start_timer, 3000, 0);
            break;
        case EAP_TYPE_EXPANDED:
            FUNC6(MSG_DEBUG, "=========expanded plen[%d], %d===========", plen, sizeof(*ehdr));
            if (ehdr->identifier == sm->current_identifier) {
                ret = 0;
                FUNC6(MSG_DEBUG, "wps: ignore overlap identifier");
                goto out;
            }
            sm->current_identifier = ehdr->identifier;

            tmp = (u8 *)(ehdr + 1) + 1;
            ret = FUNC8(tmp, plen - sizeof(*ehdr) - 1, &res);
            if (ret == 0 && res != WPS_FAILURE && res != WPS_IGNORE && res != WPS_FRAGMENT) {
                ret = FUNC10(ehdr->identifier);
                if (ret == 0) {
                    FUNC6(MSG_DEBUG, "sm->wps->state = %d", sm->wps->state);
                    FUNC12();
                }
            } else if (ret == 0 && res == WPS_FRAGMENT) {
                FUNC6(MSG_DEBUG, "wps frag, continue...");
                ret = ESP_OK;
            } else if (res == WPS_IGNORE) {
                FUNC6(MSG_DEBUG, "IGNORE overlap Mx");
                ret = ESP_OK; /* IGNORE the overlap */
            } else {
                ret = ESP_FAIL;
            }
            break;
        default:
            break;
        }
        break;
    }
    default:
        break;
    }
out:
    if (ret != 0 || res == WPS_FAILURE) {
        FUNC6(MSG_DEBUG, "wpa rx eapol internal: fail ret=%d", ret);
        FUNC11(WPS_STATUS_DISABLE);
        FUNC2();
        FUNC4(&sm->wps_timeout_timer);

        FUNC1(WIFI_EVENT, WIFI_EVENT_STA_WPS_ER_FAILED, 0, 0, portMAX_DELAY);

        return ret;
    }

    return ret;
}