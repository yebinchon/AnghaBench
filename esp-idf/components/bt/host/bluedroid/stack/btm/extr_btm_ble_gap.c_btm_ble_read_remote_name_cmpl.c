
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
typedef int BOOLEAN ;
typedef scalar_t__ BD_NAME ;
typedef int BD_ADDR ;


 scalar_t__ BD_NAME_LEN ;
 int HCI_ERR_HOST_TIMEOUT ;
 int HCI_SUCCESS ;
 int btm_process_remote_name (int ,scalar_t__,scalar_t__,int ) ;
 int btm_sec_rmt_name_request_complete (int ,int *,int ) ;
 int memcpy (int *,char*,scalar_t__) ;
 int memset (scalar_t__,int ,scalar_t__) ;

void btm_ble_read_remote_name_cmpl(BOOLEAN status, BD_ADDR bda, UINT16 length, char *p_name)
{
    UINT8 hci_status = HCI_SUCCESS;
    BD_NAME bd_name;

    memset(bd_name, 0, (BD_NAME_LEN + 1));
    if (length > BD_NAME_LEN) {
        length = BD_NAME_LEN;
    }
    memcpy((UINT8 *)bd_name, p_name, length);

    if ((!status) || (length == 0)) {
        hci_status = HCI_ERR_HOST_TIMEOUT;
    }

    btm_process_remote_name(bda, bd_name, length + 1, hci_status);

    btm_sec_rmt_name_request_complete (bda, (UINT8 *)p_name, hci_status);

}
