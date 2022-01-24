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
typedef  int /*<<< orphan*/  tBTM_VSC_CMPL_CB ;
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  tBTM_CMPL_CB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HCIC_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

tBTM_STATUS FUNC3(UINT16 opcode, UINT8 param_len,
                                      UINT8 *p_param_buf, tBTM_VSC_CMPL_CB *p_cb)
{
    void *p_buf;

    FUNC0 ("BTM: BTM_VendorSpecificCommand: Opcode: 0x%04X, ParamLen: %i.",
                     opcode, param_len);

    /* Allocate a buffer to hold HCI command plus the callback function */
    if ((p_buf = FUNC2((UINT16)(sizeof(BT_HDR) + sizeof (tBTM_CMPL_CB *) +
                                     param_len + HCIC_PREAMBLE_SIZE))) != NULL) {
        /* Send the HCI command (opcode will be OR'd with HCI_GRP_VENDOR_SPECIFIC) */
        FUNC1 (p_buf, opcode, param_len, p_param_buf, (void *)p_cb);

        /* Return value */
        if (p_cb != NULL) {
            return (BTM_CMD_STARTED);
        } else {
            return (BTM_SUCCESS);
        }
    } else {
        return (BTM_NO_RESOURCES);
    }

}