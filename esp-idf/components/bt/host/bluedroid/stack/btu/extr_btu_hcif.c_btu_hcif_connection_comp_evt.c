
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bd_addr; } ;
typedef TYPE_1__ tBTM_ESCO_DATA ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int HCID_GET_HANDLE (int ) ;
 scalar_t__ HCI_LINK_TYPE_ACL ;
 int STREAM_TO_BDADDR (int ,scalar_t__*) ;
 int STREAM_TO_UINT16 (int ,scalar_t__*) ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;
 int btm_sco_connected (scalar_t__,int ,int ,TYPE_1__*) ;
 int btm_sec_connected (int ,int ,scalar_t__,scalar_t__) ;
 int l2c_link_hci_conn_comp (scalar_t__,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void btu_hcif_connection_comp_evt (UINT8 *p)
{
    UINT8 status;
    UINT16 handle;
    BD_ADDR bda;
    UINT8 link_type;

    UINT8 enc_mode;


    tBTM_ESCO_DATA esco_data;


    STREAM_TO_UINT8 (status, p);
    STREAM_TO_UINT16 (handle, p);
    STREAM_TO_BDADDR (bda, p);
    STREAM_TO_UINT8 (link_type, p);

    STREAM_TO_UINT8 (enc_mode, p);

    handle = HCID_GET_HANDLE (handle);

    if (link_type == HCI_LINK_TYPE_ACL) {

        btm_sec_connected (bda, handle, status, enc_mode);

        l2c_link_hci_conn_comp (status, handle, bda);
    }

    else {
        memset(&esco_data, 0, sizeof(tBTM_ESCO_DATA));

        memcpy (esco_data.bd_addr, bda, BD_ADDR_LEN);
        btm_sco_connected (status, bda, handle, &esco_data);
    }

}
