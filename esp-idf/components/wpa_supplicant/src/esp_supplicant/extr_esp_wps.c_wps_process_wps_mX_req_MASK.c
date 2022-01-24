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
typedef  int u8 ;
typedef  int u16 ;
struct wps_sm {int /*<<< orphan*/  wps; int /*<<< orphan*/  wps_msg_timeout_timer; int /*<<< orphan*/  current_identifier; } ;
struct wpabuf {int dummy; } ;
struct eap_expand {int /*<<< orphan*/  opcode; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;

/* Variables and functions */
 int ESP_FAIL ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int WPS_FRAGMENT ; 
 int WPS_MSG_FLAG_LEN ; 
 int WPS_MSG_FLAG_MORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct wps_sm* gWpsSm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wpabuf**,int,int*,int,int) ; 

int FUNC6(u8 *ubuf, int len, enum wps_process_res *res)
{
    struct wps_sm *sm = gWpsSm;
    static struct wpabuf *wps_buf = NULL;
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
    FUNC1(MSG_DEBUG, "wps process mX req: len %d, tlen %d", len, tlen);

    flag = *(u8 *)(ubuf + sizeof(struct eap_expand));
    if (flag & WPS_MSG_FLAG_LEN) {
        tbuf = ubuf + sizeof(struct eap_expand) + 1 + 2;//two bytes total length
        frag_len = len - (sizeof(struct eap_expand) + 1 + 2);
        be_tot_len = *(u16 *)(ubuf + sizeof(struct eap_expand) + 1);
        tlen = ((be_tot_len & 0xff) << 8) | ((be_tot_len >> 8) & 0xff);
    } else {
        tbuf = ubuf + sizeof(struct eap_expand) + 1;
        frag_len = len - (sizeof(struct eap_expand) + 1);
        tlen = frag_len;
    }

    if ((flag & WPS_MSG_FLAG_MORE) || wps_buf != NULL) {//frag msg
        FUNC1(MSG_DEBUG, "rx frag msg id:%d, flag:%d, frag_len: %d, tot_len: %d, be_tot_len:%d", sm->current_identifier, flag, frag_len, tlen, be_tot_len);
        if (ESP_OK != FUNC5(&wps_buf, tlen, tbuf, frag_len, flag)) {
            if (wps_buf) {
                FUNC3(wps_buf);
                wps_buf = NULL;
            }
            return ESP_FAIL;
        }
        if (flag & WPS_MSG_FLAG_MORE) {
            if (res) {
                *res = WPS_FRAGMENT;
            }
            return ESP_OK;
        }
    } else { //not frag msg
        if (wps_buf) {//if something wrong, frag msg buf is not freed, free first
            FUNC1(MSG_ERROR, "something is wrong, frag buf is not freed");
            FUNC3(wps_buf);
            wps_buf = NULL;
        }
        wps_buf = FUNC2(tbuf, tlen);
    }

    if (!wps_buf) {
        return ESP_FAIL;
    }

    FUNC0(&sm->wps_msg_timeout_timer);

    if (res) {
        *res = FUNC4(sm->wps, expd->opcode, wps_buf);
    } else {
        FUNC4(sm->wps, expd->opcode, wps_buf);
    }

    if (wps_buf) {
        FUNC3(wps_buf);
        wps_buf = NULL;
    }
    return ESP_OK;
}