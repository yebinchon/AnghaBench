
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int UINT16 ;


 scalar_t__ HCI_SUCCESS ;
 int STREAM_TO_UINT16 (int ,scalar_t__*) ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;
 int btm_read_remote_ext_features_complete (scalar_t__*) ;
 int btm_read_remote_ext_features_failed (scalar_t__,int ) ;

__attribute__((used)) static void btu_hcif_read_rmt_ext_features_comp_evt (UINT8 *p)
{
    UINT8 *p_cur = p;
    UINT8 status;
    UINT16 handle;

    STREAM_TO_UINT8 (status, p_cur);

    if (status == HCI_SUCCESS) {
        btm_read_remote_ext_features_complete(p);
    } else {
        STREAM_TO_UINT16 (handle, p_cur);
        btm_read_remote_ext_features_failed(status, handle);
    }
}
