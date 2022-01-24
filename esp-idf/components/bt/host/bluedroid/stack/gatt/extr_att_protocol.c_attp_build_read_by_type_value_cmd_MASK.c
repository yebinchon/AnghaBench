#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int value_len; int /*<<< orphan*/  value; int /*<<< orphan*/  uuid; int /*<<< orphan*/  e_handle; int /*<<< orphan*/  s_handle; } ;
typedef  TYPE_1__ tGATT_FIND_TYPE_VALUE ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT16 ;
struct TYPE_6__ {int offset; int len; } ;
typedef  TYPE_2__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  GATT_REQ_FIND_TYPE_VALUE ; 
 int L2CAP_MIN_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

BT_HDR *FUNC5 (UINT16 payload_size, tGATT_FIND_TYPE_VALUE *p_value_type)
{
    BT_HDR      *p_buf = NULL;
    UINT8       *p;
    UINT16      len = p_value_type->value_len;

    if ((p_buf = (BT_HDR *)FUNC4((UINT16)(sizeof(BT_HDR) + payload_size + L2CAP_MIN_OFFSET))) != NULL) {
        p = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;

        p_buf->offset = L2CAP_MIN_OFFSET;
        p_buf->len = 5; /* opcode + s_handle + e_handle */

        FUNC1  (p, GATT_REQ_FIND_TYPE_VALUE);
        FUNC0 (p, p_value_type->s_handle);
        FUNC0 (p, p_value_type->e_handle);

        p_buf->len += FUNC2(&p, p_value_type->uuid);

        if (p_value_type->value_len +  p_buf->len > payload_size ) {
            len = payload_size - p_buf->len;
        }

        FUNC3 (p, p_value_type->value, len);
        p_buf->len += len;
    }

    return p_buf;
}