
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wps_sm {int wps; int wps_msg_timeout_timer; int current_identifier; } ;
struct wpabuf {int dummy; } ;
struct eap_expand {int opcode; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;


 int ESP_FAIL ;
 scalar_t__ ESP_OK ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WPS_FRAGMENT ;
 int WPS_MSG_FLAG_LEN ;
 int WPS_MSG_FLAG_MORE ;
 int ets_timer_disarm (int *) ;
 struct wps_sm* gWpsSm ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc_copy (int*,int) ;
 int wpabuf_free (struct wpabuf*) ;
 int wps_enrollee_process_msg (int ,int ,struct wpabuf*) ;
 scalar_t__ wps_enrollee_process_msg_frag (struct wpabuf**,int,int*,int,int) ;

int wps_process_wps_mX_req(u8 *ubuf, int len, enum wps_process_res *res)
{
    struct wps_sm *sm = gWpsSm;
    static struct wpabuf *wps_buf = ((void*)0);
    struct eap_expand *expd;
    int tlen = 0;
    u8 *tbuf;
    u8 flag;
    int frag_len;
    u16 be_tot_len = 0;

    if (!sm) {
        return ESP_FAIL;
    }

    expd = (struct eap_expand *) ubuf;
    wpa_printf(MSG_DEBUG, "wps process mX req: len %d, tlen %d", len, tlen);

    flag = *(u8 *)(ubuf + sizeof(struct eap_expand));
    if (flag & WPS_MSG_FLAG_LEN) {
        tbuf = ubuf + sizeof(struct eap_expand) + 1 + 2;
        frag_len = len - (sizeof(struct eap_expand) + 1 + 2);
        be_tot_len = *(u16 *)(ubuf + sizeof(struct eap_expand) + 1);
        tlen = ((be_tot_len & 0xff) << 8) | ((be_tot_len >> 8) & 0xff);
    } else {
        tbuf = ubuf + sizeof(struct eap_expand) + 1;
        frag_len = len - (sizeof(struct eap_expand) + 1);
        tlen = frag_len;
    }

    if ((flag & WPS_MSG_FLAG_MORE) || wps_buf != ((void*)0)) {
        wpa_printf(MSG_DEBUG, "rx frag msg id:%d, flag:%d, frag_len: %d, tot_len: %d, be_tot_len:%d", sm->current_identifier, flag, frag_len, tlen, be_tot_len);
        if (ESP_OK != wps_enrollee_process_msg_frag(&wps_buf, tlen, tbuf, frag_len, flag)) {
            if (wps_buf) {
                wpabuf_free(wps_buf);
                wps_buf = ((void*)0);
            }
            return ESP_FAIL;
        }
        if (flag & WPS_MSG_FLAG_MORE) {
            if (res) {
                *res = WPS_FRAGMENT;
            }
            return ESP_OK;
        }
    } else {
        if (wps_buf) {
            wpa_printf(MSG_ERROR, "something is wrong, frag buf is not freed");
            wpabuf_free(wps_buf);
            wps_buf = ((void*)0);
        }
        wps_buf = wpabuf_alloc_copy(tbuf, tlen);
    }

    if (!wps_buf) {
        return ESP_FAIL;
    }

    ets_timer_disarm(&sm->wps_msg_timeout_timer);

    if (res) {
        *res = wps_enrollee_process_msg(sm->wps, expd->opcode, wps_buf);
    } else {
        wps_enrollee_process_msg(sm->wps, expd->opcode, wps_buf);
    }

    if (wps_buf) {
        wpabuf_free(wps_buf);
        wps_buf = ((void*)0);
    }
    return ESP_OK;
}
