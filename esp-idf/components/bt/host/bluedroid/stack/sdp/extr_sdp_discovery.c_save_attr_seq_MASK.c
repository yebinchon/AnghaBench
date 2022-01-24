#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tSDP_DISC_REC ;
struct TYPE_3__ {int /*<<< orphan*/  p_db; int /*<<< orphan*/  device_address; } ;
typedef  TYPE_1__ tCONN_CB ;
typedef  int UINT8 ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int DATA_ELE_SEQ_DESC_TYPE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int UINT_DESC_TYPE ; 
 int* FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC4 (int*,int,int*) ; 

__attribute__((used)) static UINT8 *FUNC5 (tCONN_CB *p_ccb, UINT8 *p, UINT8 *p_msg_end)
{
    UINT32      seq_len, attr_len;
    UINT16      attr_id;
    UINT8       type, *p_seq_end;
    tSDP_DISC_REC *p_rec;

    type = *p++;

    if ((type >> 3) != DATA_ELE_SEQ_DESC_TYPE) {
        FUNC1 ("SDP - Wrong type: 0x%02x in attr_rsp\n", type);
        return (NULL);
    }

    p = FUNC4 (p, type, &seq_len);
    if ((p + seq_len) > p_msg_end) {
        FUNC1 ("SDP - Bad len in attr_rsp %d\n", seq_len);
        return (NULL);
    }

    /* Create a record */
    p_rec = FUNC3 (p_ccb->p_db, p_ccb->device_address);
    if (!p_rec) {
        FUNC1 ("SDP - DB full add_record\n");
        return (NULL);
    }

    p_seq_end = p + seq_len;

    while (p < p_seq_end) {
        /* First get the attribute ID */
        type = *p++;
        p = FUNC4 (p, type, &attr_len);
        if (((type >> 3) != UINT_DESC_TYPE) || (attr_len != 2)) {
            FUNC1 ("SDP - Bad type: 0x%02x or len: %d in attr_rsp\n", type, attr_len);
            return (NULL);
        }
        FUNC0 (attr_id, p);

        /* Now, add the attribute value */
        p = FUNC2 (p, p_ccb->p_db, p_rec, attr_id, NULL, 0);

        if (!p) {
            FUNC1 ("SDP - DB full add_attr\n");
            return (NULL);
        }
    }

    return (p);
}