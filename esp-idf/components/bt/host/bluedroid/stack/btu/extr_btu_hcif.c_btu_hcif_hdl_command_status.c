
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_ESCO_DATA ;
typedef int tBTM_CMPL_CB ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int * BD_ADDR ;


 int BTM_BR_INQUIRY_MASK ;
 int BTM_INVALID_HCI_HANDLE ;
 int BTM_ROLE_UNDEFINED ;
 int FALSE ;




 int HCI_ERR_COMMAND_DISALLOWED ;


 int HCI_GRP_VENDOR_SPECIFIC ;


 int HCI_INVALID_HANDLE ;







 int HCI_SUCCESS ;

 int STREAM_TO_BDADDR (int *,int *) ;
 int STREAM_TO_UINT16 (int,int *) ;
 int btm_acl_role_changed (int ,int *,int ) ;
 int btm_ble_create_ll_conn_complete (int ) ;
 int btm_esco_proc_conn_chg (int ,int,int ,int ,int ,int ) ;
 int btm_is_sco_active (int) ;
 int btm_pm_proc_cmd_status (int ) ;
 int btm_process_inq_complete (int ,int ) ;
 int btm_process_remote_name (int *,int *,int ,int ) ;
 int btm_qos_setup_complete (int ,int ,int *) ;
 int btm_read_remote_ext_features_failed (int ,int) ;
 int btm_sco_chk_pend_unpark (int ,int) ;
 int btm_sco_connected (int ,int *,int,int *) ;
 int btm_sec_auth_complete (int ,int ) ;
 int btm_sec_connected (int *,int,int ,int ) ;
 int btm_sec_encrypt_change (int ,int ,int ) ;
 int btm_sec_rmt_name_request_complete (int *,int *,int ) ;
 int btm_vsc_complete (int *,int,int,int *) ;
 int btu_ble_ll_get_conn_param_format_err_from_contoller (int ,int) ;
 int l2c_link_hci_conn_comp (int ,int,int *) ;
 int l2c_link_role_changed (int *,int ,int ) ;

__attribute__((used)) static void btu_hcif_hdl_command_status (UINT16 opcode, UINT8 status, UINT8 *p_cmd,
        void *p_vsc_status_cback)
{
    BD_ADDR bd_addr;
    UINT16 handle;

    tBTM_ESCO_DATA esco_data;


    switch (opcode) {
    case 138:
    case 139:

        if (status != HCI_SUCCESS) {

            if (p_cmd != ((void*)0)) {
                p_cmd++;
                STREAM_TO_UINT16 (handle, p_cmd);
                btm_sco_chk_pend_unpark (status, handle);
            }
        }



    case 137:
    case 129:
    case 135:
        btm_pm_proc_cmd_status(status);
        break;

    default:

        if (status != HCI_SUCCESS) {
            switch (opcode) {
            case 136:

                btm_process_inq_complete(status, BTM_BR_INQUIRY_MASK);
                break;

            case 132:

                btm_process_remote_name (((void*)0), ((void*)0), 0, status);

                btm_sec_rmt_name_request_complete (((void*)0), ((void*)0), status);

                break;

            case 134:

                btm_qos_setup_complete(status, 0, ((void*)0));
                break;

            case 128:


                if (p_cmd != ((void*)0)) {
                    p_cmd++;
                    STREAM_TO_BDADDR (bd_addr, p_cmd);
                    btm_acl_role_changed(status, bd_addr, BTM_ROLE_UNDEFINED);
                } else {
                    btm_acl_role_changed(status, ((void*)0), BTM_ROLE_UNDEFINED);
                }
                l2c_link_role_changed (((void*)0), BTM_ROLE_UNDEFINED, HCI_ERR_COMMAND_DISALLOWED);
                break;

            case 140:

                if (p_cmd != ((void*)0)) {
                    p_cmd++;
                    STREAM_TO_BDADDR (bd_addr, p_cmd);

                    btm_sec_connected (bd_addr, HCI_INVALID_HANDLE, status, 0);

                    l2c_link_hci_conn_comp (status, HCI_INVALID_HANDLE, bd_addr);
                }
                break;

            case 133:
                if (p_cmd != ((void*)0)) {
                    p_cmd++;
                    STREAM_TO_UINT16 (handle, p_cmd);
                } else {
                    handle = HCI_INVALID_HANDLE;
                }

                btm_read_remote_ext_features_failed(status, handle);
                break;

            case 143:


                btm_sec_auth_complete (BTM_INVALID_HCI_HANDLE, status);

                break;

            case 130:


                btm_sec_encrypt_change (BTM_INVALID_HCI_HANDLE, status, FALSE);

                break;


            case 142:
                btm_ble_create_ll_conn_complete(status);
                break;
            case 141:
                if (p_cmd != ((void*)0)){
                    p_cmd++;
                    STREAM_TO_UINT16 (handle, p_cmd);
                    btu_ble_ll_get_conn_param_format_err_from_contoller(status, handle);
                }
                break;



            case 131:

                if (p_cmd != ((void*)0)) {
                    p_cmd++;
                    STREAM_TO_UINT16 (handle, p_cmd);


                    if (btm_is_sco_active(handle)) {
                        btm_esco_proc_conn_chg (status, handle, 0, 0, 0, 0);
                    } else {
                        btm_sco_connected (status, ((void*)0), handle, &esco_data);
                    }
                }
                break;
            default:
                if ((opcode & HCI_GRP_VENDOR_SPECIFIC) == HCI_GRP_VENDOR_SPECIFIC) {
                    btm_vsc_complete (&status, opcode, 1, (tBTM_CMPL_CB *)p_vsc_status_cback);
                }
                break;
            }

        } else {
            if ((opcode & HCI_GRP_VENDOR_SPECIFIC) == HCI_GRP_VENDOR_SPECIFIC) {
                btm_vsc_complete (&status, opcode, 1, (tBTM_CMPL_CB *)p_vsc_status_cback);
            }
        }
    }
}
