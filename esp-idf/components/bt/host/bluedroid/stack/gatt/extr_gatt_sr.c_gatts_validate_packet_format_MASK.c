#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tGATT_STATUS ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef  TYPE_1__ tBT_UUID ;
typedef  scalar_t__ UINT8 ;
typedef  int UINT16 ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GATT_INVALID_HANDLE ; 
 int /*<<< orphan*/  GATT_INVALID_PDU ; 
 scalar_t__ GATT_REQ_FIND_TYPE_VALUE ; 
 scalar_t__ GATT_REQ_READ_BY_GRP_TYPE ; 
 scalar_t__ GATT_REQ_READ_BY_TYPE ; 
 int /*<<< orphan*/  GATT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int,scalar_t__**) ; 

__attribute__((used)) static tGATT_STATUS FUNC4(UINT8 op_code, UINT16 *p_len,
        UINT8 **p_data, tBT_UUID *p_uuid_filter,
        UINT16 *p_s_hdl, UINT16 *p_e_hdl)
{
    tGATT_STATUS    reason = GATT_SUCCESS;
    UINT16          uuid_len, s_hdl = 0, e_hdl = 0;
    UINT16          len = *p_len;
    UINT8           *p = *p_data;

    if (len >= 4) {
        /* obtain starting handle, and ending handle */
        FUNC2(s_hdl, p);
        FUNC2(e_hdl, p);
        len -= 4;

        if (s_hdl > e_hdl || !FUNC0(s_hdl) || !FUNC0(e_hdl)) {
            reason = GATT_INVALID_HANDLE;
        }
        /* for these PDUs, uuid filter must present */
        else if (op_code == GATT_REQ_READ_BY_GRP_TYPE ||
                 op_code == GATT_REQ_FIND_TYPE_VALUE ||
                 op_code == GATT_REQ_READ_BY_TYPE) {
            if (len >= 2 && p_uuid_filter != NULL) {
                uuid_len = (op_code == GATT_REQ_FIND_TYPE_VALUE) ? 2 : len;

                /* parse uuid now */
                if (FUNC3 (p_uuid_filter, uuid_len, &p) == FALSE ||
                        p_uuid_filter->len == 0) {
                    FUNC1("UUID filter does not exsit");
                    reason = GATT_INVALID_PDU;
                } else {
                    len -= p_uuid_filter->len;
                }
            } else {
                reason = GATT_INVALID_PDU;
            }
        }
    } else {
        reason = GATT_INVALID_PDU;
    }

    *p_data     = p;
    *p_len      = len;
    *p_s_hdl    = s_hdl;
    *p_e_hdl    = e_hdl;

    return reason;
}