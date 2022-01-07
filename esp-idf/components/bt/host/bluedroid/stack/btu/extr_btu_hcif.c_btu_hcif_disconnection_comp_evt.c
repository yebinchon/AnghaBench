
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT16 ;


 int HCID_GET_HANDLE (int ) ;
 int STREAM_TO_UINT16 (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int btm_sco_removed (int ,int ) ;
 int btm_sec_disconnected (int ,int ) ;
 int l2c_link_hci_disc_comp (int ,int ) ;

__attribute__((used)) static void btu_hcif_disconnection_comp_evt (UINT8 *p)
{
    UINT16 handle;
    UINT8 reason;

    ++p;
    STREAM_TO_UINT16 (handle, p);
    STREAM_TO_UINT8 (reason, p);

    handle = HCID_GET_HANDLE (handle);



    if (!l2c_link_hci_disc_comp (handle, reason)) {
        btm_sco_removed (handle, reason);
    }





    btm_sec_disconnected (handle, reason);

}
