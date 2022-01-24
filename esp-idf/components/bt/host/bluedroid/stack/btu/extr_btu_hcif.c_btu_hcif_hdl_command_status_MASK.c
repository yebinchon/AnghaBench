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
typedef  int /*<<< orphan*/  tBTM_ESCO_DATA ;
typedef  int /*<<< orphan*/  tBTM_CMPL_CB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT16 ;
typedef  int /*<<< orphan*/ * BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_BR_INQUIRY_MASK ; 
 int /*<<< orphan*/  BTM_INVALID_HCI_HANDLE ; 
 int /*<<< orphan*/  BTM_ROLE_UNDEFINED ; 
 int /*<<< orphan*/  FALSE ; 
#define  HCI_AUTHENTICATION_REQUESTED 143 
#define  HCI_BLE_CREATE_LL_CONN 142 
#define  HCI_BLE_UPD_LL_CONN_PARAMS 141 
#define  HCI_CREATE_CONNECTION 140 
 int /*<<< orphan*/  HCI_ERR_COMMAND_DISALLOWED ; 
#define  HCI_EXIT_PARK_MODE 139 
#define  HCI_EXIT_SNIFF_MODE 138 
 int HCI_GRP_VENDOR_SPECIFIC ; 
#define  HCI_HOLD_MODE 137 
#define  HCI_INQUIRY 136 
 int HCI_INVALID_HANDLE ; 
#define  HCI_PARK_MODE 135 
#define  HCI_QOS_SETUP_COMP_EVT 134 
#define  HCI_READ_RMT_EXT_FEATURES 133 
#define  HCI_RMT_NAME_REQUEST 132 
#define  HCI_SETUP_ESCO_CONNECTION 131 
#define  HCI_SET_CONN_ENCRYPTION 130 
#define  HCI_SNIFF_MODE 129 
 int /*<<< orphan*/  HCI_SUCCESS ; 
#define  HCI_SWITCH_ROLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC21 (UINT16 opcode, UINT8 status, UINT8 *p_cmd,
        void *p_vsc_status_cback)
{
    BD_ADDR         bd_addr;
    UINT16          handle;
#if BTM_SCO_INCLUDED == TRUE
    tBTM_ESCO_DATA  esco_data;
#endif

    switch (opcode) {
    case HCI_EXIT_SNIFF_MODE:
    case HCI_EXIT_PARK_MODE:
#if BTM_SCO_WAKE_PARKED_LINK == TRUE
        if (status != HCI_SUCCESS) {
            /* Allow SCO initiation to continue if waiting for change mode event */
            if (p_cmd != NULL) {
                p_cmd++;    /* bypass length field */
                FUNC1 (handle, p_cmd);
                FUNC11 (status, handle);
            }
        }
#endif
    /* Case Falls Through */

    case HCI_HOLD_MODE:
    case HCI_SNIFF_MODE:
    case HCI_PARK_MODE:
        FUNC6(status);
        break;

    default:
        /* If command failed to start, we may need to tell BTM */
        if (status != HCI_SUCCESS) {
            switch (opcode) {
            case HCI_INQUIRY:
                /* Tell inquiry processing that we are done */
                FUNC7(status, BTM_BR_INQUIRY_MASK);
                break;

            case HCI_RMT_NAME_REQUEST:
                /* Tell inquiry processing that we are done */
                FUNC8 (NULL, NULL, 0, status);
#if (SMP_INCLUDED == TRUE)
                FUNC16 (NULL, NULL, status);
#endif  ///SMP_INCLUDED == TRUE
                break;

            case HCI_QOS_SETUP_COMP_EVT:
                /* Tell qos setup that we are done */
                FUNC9(status, 0, NULL);
                break;

            case HCI_SWITCH_ROLE:
                /* Tell BTM that the command failed */
                /* read bd addr out of stored command */
                if (p_cmd != NULL) {
                    p_cmd++;
                    FUNC0 (bd_addr, p_cmd);
                    FUNC2(status, bd_addr, BTM_ROLE_UNDEFINED);
                } else {
                    FUNC2(status, NULL, BTM_ROLE_UNDEFINED);
                }
                FUNC20 (NULL, BTM_ROLE_UNDEFINED, HCI_ERR_COMMAND_DISALLOWED);
                break;

            case HCI_CREATE_CONNECTION:
                /* read bd addr out of stored command */
                if (p_cmd != NULL) {
                    p_cmd++;
                    FUNC0 (bd_addr, p_cmd);
#if (SMP_INCLUDED == TRUE)
                    FUNC14 (bd_addr, HCI_INVALID_HANDLE, status, 0);
#endif  ///SMP_INCLUDED == TRUE
                    FUNC19 (status, HCI_INVALID_HANDLE, bd_addr);
                }
                break;

            case HCI_READ_RMT_EXT_FEATURES:
                if (p_cmd != NULL) {
                    p_cmd++; /* skip command length */
                    FUNC1 (handle, p_cmd);
                } else {
                    handle = HCI_INVALID_HANDLE;
                }

                FUNC10(status, handle);
                break;

            case HCI_AUTHENTICATION_REQUESTED:
#if (SMP_INCLUDED == TRUE)
                /* Device refused to start authentication.  That should be treated as authentication failure. */
                FUNC13 (BTM_INVALID_HCI_HANDLE, status);
#endif  ///SMP_INCLUDED == TRUE
                break;

            case HCI_SET_CONN_ENCRYPTION:
#if (SMP_INCLUDED == TRUE)
                /* Device refused to start encryption.  That should be treated as encryption failure. */
                FUNC15 (BTM_INVALID_HCI_HANDLE, status, FALSE);
#endif  ///SMP_INCLUDED == TRUE
                break;

#if BLE_INCLUDED == TRUE
            case HCI_BLE_CREATE_LL_CONN:
                FUNC3(status);
                break;
            case HCI_BLE_UPD_LL_CONN_PARAMS:
                if (p_cmd != NULL){
                    p_cmd++;
                    FUNC1 (handle, p_cmd);
                    FUNC18(status, handle);
                }
                break;
#endif

#if BTM_SCO_INCLUDED == TRUE
            case HCI_SETUP_ESCO_CONNECTION:
                /* read handle out of stored command */
                if (p_cmd != NULL) {
                    p_cmd++;
                    FUNC1 (handle, p_cmd);

                    /* Determine if initial connection failed or is a change of setup */
                    if (FUNC5(handle)) {
                        FUNC4 (status, handle, 0, 0, 0, 0);
                    } else {
                        FUNC12 (status, NULL, handle, &esco_data);
                    }
                }
                break;
#endif

            /* This is commented out until an upper layer cares about returning event
            #if L2CAP_NON_FLUSHABLE_PB_INCLUDED == TRUE
                        case HCI_ENHANCED_FLUSH:
                            break;
            #endif
            */
            default:
                if ((opcode & HCI_GRP_VENDOR_SPECIFIC) == HCI_GRP_VENDOR_SPECIFIC) {
                    FUNC17 (&status, opcode, 1, (tBTM_CMPL_CB *)p_vsc_status_cback);
                }
                break;
            }

        } else {
            if ((opcode & HCI_GRP_VENDOR_SPECIFIC) == HCI_GRP_VENDOR_SPECIFIC) {
                FUNC17 (&status, opcode, 1, (tBTM_CMPL_CB *)p_vsc_status_cback);
            }
        }
    }
}