#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {size_t list_len; int* rsp_list; scalar_t__ cur_handle; scalar_t__ num_handles; scalar_t__ transaction_id; int /*<<< orphan*/  timer_entry; int /*<<< orphan*/  connection_id; TYPE_1__* p_db; int /*<<< orphan*/ * handles; } ;
typedef  TYPE_2__ tCONN_CB ;
typedef  int UINT8 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_13__ {scalar_t__ max_attr_list_size; } ;
struct TYPE_12__ {int offset; scalar_t__ len; } ;
struct TYPE_10__ {int /*<<< orphan*/  num_attr_filters; int /*<<< orphan*/ * attr_filters; } ;
typedef  TYPE_3__ BT_HDR ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int*) ; 
 int /*<<< orphan*/  BTU_TTYPE_SDP ; 
 scalar_t__ FALSE ; 
 int L2CAP_MIN_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ SDP_DATA_BUF_SIZE ; 
 int /*<<< orphan*/  SDP_DB_FULL ; 
 int /*<<< orphan*/  SDP_INACT_TIMEOUT ; 
 int /*<<< orphan*/  SDP_INVALID_CONT_STATE ; 
 int /*<<< orphan*/  SDP_INVALID_PDU_SIZE ; 
 int SDP_MAX_CONTINUATION_LEN ; 
 scalar_t__ SDP_MAX_LIST_BYTE_COUNT ; 
 int /*<<< orphan*/  SDP_NO_RESOURCES ; 
 int /*<<< orphan*/  SDP_PDU_SERVICE_ATTR_REQ ; 
 int /*<<< orphan*/  SDP_RAW_DATA_INCLUDED ; 
 int /*<<< orphan*/  SDP_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int*,int*) ; 
 TYPE_6__ sdp_cb ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int* FUNC13 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14 (tCONN_CB *p_ccb, UINT8 *p_reply)
{
    UINT8           *p_start, *p_param_len;
    UINT16          param_len, list_byte_count;
    BOOLEAN         cont_request_needed = FALSE;

#if (SDP_DEBUG_RAW == TRUE)
    FUNC3("process_service_attr_rsp raw inc:%d\n",
                      SDP_RAW_DATA_INCLUDED);
#endif
    /* If p_reply is NULL, we were called after the records handles were read */
    if (p_reply) {
#if (SDP_DEBUG_RAW == TRUE)
        FUNC3("ID & len: 0x%02x-%02x-%02x-%02x\n",
                          p_reply[0], p_reply[1], p_reply[2], p_reply[3]);
#endif
        /* Skip transaction ID and length */
        p_reply += 4;

        FUNC0 (list_byte_count, p_reply);
#if (SDP_DEBUG_RAW == TRUE)
        FUNC3("list_byte_count:%d\n", list_byte_count);
#endif

        /* Copy the response to the scratchpad. First, a safety check on the length */
        if ((p_ccb->list_len + list_byte_count) > SDP_MAX_LIST_BYTE_COUNT) {
            FUNC12 (p_ccb, SDP_INVALID_PDU_SIZE);
            return;
        }

#if (SDP_DEBUG_RAW == TRUE)
        FUNC3("list_len: %d, list_byte_count: %d\n",
                          p_ccb->list_len, list_byte_count);
#endif
        if (p_ccb->rsp_list == NULL) {
            p_ccb->rsp_list = (UINT8 *)FUNC9 (SDP_MAX_LIST_BYTE_COUNT);
            if (p_ccb->rsp_list == NULL) {
                FUNC2 ("SDP - no gki buf to save rsp\n");
                FUNC12 (p_ccb, SDP_NO_RESOURCES);
                return;
            }
        }
        FUNC8 (&p_ccb->rsp_list[p_ccb->list_len], p_reply, list_byte_count);
        p_ccb->list_len += list_byte_count;
        p_reply         += list_byte_count;
#if (SDP_DEBUG_RAW == TRUE)
        FUNC3("list_len: %d(attr_rsp)\n", p_ccb->list_len);

        /* Check if we need to request a continuation */
        FUNC3("*p_reply:%d(%d)\n", *p_reply, SDP_MAX_CONTINUATION_LEN);
#endif
        if (*p_reply) {
            if (*p_reply > SDP_MAX_CONTINUATION_LEN) {
                FUNC12 (p_ccb, SDP_INVALID_CONT_STATE);
                return;
            }
            cont_request_needed = TRUE;
        } else {

#if (SDP_RAW_DATA_INCLUDED == TRUE)
            FUNC3("process_service_attr_rsp\n");
            FUNC11 (p_ccb, FALSE);
#endif

            /* Save the response in the database. Stop on any error */
            if (!FUNC10 (p_ccb, &p_ccb->rsp_list[0], &p_ccb->rsp_list[p_ccb->list_len])) {
                FUNC12 (p_ccb, SDP_DB_FULL);
                return;
            }
            p_ccb->list_len = 0;
            p_ccb->cur_handle++;
        }
    }

    /* Now, ask for the next handle. Re-use the buffer we just got. */
    if (p_ccb->cur_handle < p_ccb->num_handles) {
        BT_HDR  *p_msg = (BT_HDR *) FUNC9(SDP_DATA_BUF_SIZE);
        UINT8   *p;

        if (!p_msg) {
            FUNC12 (p_ccb, SDP_NO_RESOURCES);
            return;
        }

        p_msg->offset = L2CAP_MIN_OFFSET;
        p = p_start = (UINT8 *)(p_msg + 1) + L2CAP_MIN_OFFSET;

        /* Get all the attributes from the server */
        FUNC6  (p, SDP_PDU_SERVICE_ATTR_REQ);
        FUNC4 (p, p_ccb->transaction_id);
        p_ccb->transaction_id++;

        /* Skip the length, we need to add it at the end */
        p_param_len = p;
        p += 2;

        FUNC5 (p, p_ccb->handles[p_ccb->cur_handle]);

        /* Max attribute byte count */
        FUNC4 (p, sdp_cb.max_attr_list_size);

        /* If no attribute filters, build a wildcard attribute sequence */
        if (p_ccb->p_db->num_attr_filters) {
            p = FUNC13 (p, p_ccb->p_db->attr_filters, p_ccb->p_db->num_attr_filters);
        } else {
            p = FUNC13 (p, NULL, 0);
        }

        /* Was this a continuation request ? */
        if (cont_request_needed) {
            FUNC8 (p, p_reply, *p_reply + 1);
            p += *p_reply + 1;
        } else {
            FUNC6 (p, 0);
        }

        /* Go back and put the parameter length into the buffer */
        param_len = (UINT16)(p - p_param_len - 2);
        FUNC4 (p_param_len, param_len);

        /* Set the length of the SDP data in the buffer */
        p_msg->len = (UINT16)(p - p_start);


        FUNC1 (p_ccb->connection_id, p_msg);

        /* Start inactivity timer */
        FUNC7 (&p_ccb->timer_entry, BTU_TTYPE_SDP, SDP_INACT_TIMEOUT);
    } else {
        FUNC12 (p_ccb, SDP_SUCCESS);
        return;
    }
}