#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int remote_cid; TYPE_4__* p_lcb; int /*<<< orphan*/  remote_id; } ;
typedef  TYPE_1__ tL2C_CCB ;
typedef  int UINT8 ;
typedef  int UINT16 ;
struct TYPE_8__ {int handle; } ;
struct TYPE_7__ {int offset; int len; } ;
typedef  TYPE_2__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int BT_HDR_SIZE ; 
 int HCI_DATA_PREAMBLE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int L2CAP_CFG_OPTION_OVERHEAD ; 
#define  L2CAP_CFG_TYPE_FLUSH_TOUT 130 
#define  L2CAP_CFG_TYPE_MTU 129 
#define  L2CAP_CFG_TYPE_QOS 128 
 int L2CAP_CFG_UNKNOWN_OPTIONS ; 
 int /*<<< orphan*/  L2CAP_CMD_CONFIG_RSP ; 
 int /*<<< orphan*/  L2CAP_CMD_OVERHEAD ; 
 int /*<<< orphan*/  L2CAP_CONFIG_RSP_LEN ; 
 int L2CAP_PKT_OVERHEAD ; 
 int L2CAP_PKT_START ; 
 int L2CAP_PKT_START_NON_FLUSHABLE ; 
 int L2CAP_PKT_TYPE_SHIFT ; 
 int L2CAP_SEND_CMD_OFFSET ; 
 int L2CAP_SIGNALLING_CID ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10 (tL2C_CCB *p_ccb, UINT8 *p_data, UINT16 data_len, UINT16 rej_len)
{
    BT_HDR  *p_buf;
    UINT16  len, cfg_len, buf_space, len1;
    UINT8   *p, *p_hci_len, *p_data_end;
    UINT8   cfg_code;

    FUNC2("l2cu_send_peer_config_rej: data_len=%d, rej_len=%d", data_len, rej_len);


    len = BT_HDR_SIZE + HCI_DATA_PREAMBLE_SIZE + L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD + L2CAP_CONFIG_RSP_LEN;
    len1 = 0xFFFF - len;
    if (rej_len > len1) {
        FUNC3 ("L2CAP - cfg_rej pkt size exceeds buffer design max limit.");
        return;
    }

    p_buf = (BT_HDR *)FUNC9 (len + rej_len);

    if (!p_buf) {
        FUNC3 ("L2CAP - no buffer for cfg_rej");
        return;
    }

    p_buf->offset = L2CAP_SEND_CMD_OFFSET;
    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET;

    /* Put in HCI header - handle + pkt boundary */
#if (L2CAP_NON_FLUSHABLE_PB_INCLUDED == TRUE)
    if (FUNC1(FUNC0 ())) {
        FUNC5 (p, (p_ccb->p_lcb->handle | (L2CAP_PKT_START_NON_FLUSHABLE << L2CAP_PKT_TYPE_SHIFT)));
    } else
#endif
    {
        FUNC5 (p, (p_ccb->p_lcb->handle | (L2CAP_PKT_START << L2CAP_PKT_TYPE_SHIFT)));
    }

    /* Remember the HCI header length position, and save space for it */
    p_hci_len = p;
    p += 2;

    /* Put in L2CAP packet header */
    FUNC5 (p, L2CAP_CMD_OVERHEAD + L2CAP_CONFIG_RSP_LEN + rej_len);
    FUNC5 (p, L2CAP_SIGNALLING_CID);

    /* Put in L2CAP command header */
    FUNC6  (p, L2CAP_CMD_CONFIG_RSP);
    FUNC6  (p, p_ccb->remote_id);

    FUNC5 (p, L2CAP_CONFIG_RSP_LEN + rej_len);

    FUNC5 (p, p_ccb->remote_cid);
    FUNC5 (p, 0);                    /* Flags = 0 (no continuation) */
    FUNC5 (p, L2CAP_CFG_UNKNOWN_OPTIONS);

    buf_space = rej_len;

    /* Now, put the rejected options */
    p_data_end = p_data + data_len;
    while (p_data < p_data_end) {
        cfg_code = *p_data;
        cfg_len = *(p_data + 1);

        switch (cfg_code & 0x7F) {
        /* skip known options */
        case L2CAP_CFG_TYPE_MTU:
        case L2CAP_CFG_TYPE_FLUSH_TOUT:
        case L2CAP_CFG_TYPE_QOS:
            p_data += cfg_len + L2CAP_CFG_OPTION_OVERHEAD;
            break;

        /* unknown options; copy into rsp if not hints */
        default:
            /* sanity check option length */
            if ((cfg_len + L2CAP_CFG_OPTION_OVERHEAD) <= data_len) {
                if ((cfg_code & 0x80) == 0) {
                    if (buf_space >= (cfg_len + L2CAP_CFG_OPTION_OVERHEAD)) {
                        FUNC8(p, p_data, cfg_len + L2CAP_CFG_OPTION_OVERHEAD);
                        p += cfg_len + L2CAP_CFG_OPTION_OVERHEAD;
                        buf_space -= (cfg_len + L2CAP_CFG_OPTION_OVERHEAD);
                    } else {
                        FUNC4("L2CAP - cfg_rej exceeds allocated buffer");
                        p_data = p_data_end; /* force loop exit */
                        break;
                    }
                }
                p_data += cfg_len + L2CAP_CFG_OPTION_OVERHEAD;
            }
            /* bad length; force loop exit */
            else {
                p_data = p_data_end;
            }
            break;
        }
    }

    len = (UINT16) (p - p_hci_len - 2);
    FUNC5 (p_hci_len, len);

    p_buf->len = len + 4;

    FUNC2 ("L2CAP - cfg_rej pkt hci_len=%d, l2cap_len=%d",
                       len, (L2CAP_CMD_OVERHEAD + L2CAP_CONFIG_RSP_LEN + rej_len));

    FUNC7 (p_ccb->p_lcb, NULL, p_buf);
}