
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * peer_lmp_features; } ;
typedef TYPE_1__ tACL_CONN ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_8__ {TYPE_1__* acl_db; } ;
struct TYPE_7__ {scalar_t__ (* supports_reading_remote_extended_features ) () ;} ;


 int BTM_TRACE_DEBUG (char*) ;
 int BTM_TRACE_ERROR (char*,scalar_t__) ;
 size_t HCI_EXT_FEATURES_PAGE_0 ;
 int HCI_EXT_FEATURES_PAGE_1 ;
 int HCI_FEATURE_BYTES_PER_PAGE ;
 scalar_t__ HCI_LMP_EXTENDED_SUPPORTED (int ) ;
 scalar_t__ HCI_SUCCESS ;
 scalar_t__ MAX_L2CAP_LINKS ;
 int STREAM_TO_ARRAY (int ,scalar_t__*,int ) ;
 int STREAM_TO_UINT16 (scalar_t__,scalar_t__*) ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;
 TYPE_5__ btm_cb ;
 int btm_establish_continue (TYPE_1__*) ;
 scalar_t__ btm_handle_to_acl_index (scalar_t__) ;
 int btm_process_remote_ext_features (TYPE_1__*,int) ;
 int btm_read_remote_ext_features (scalar_t__,int ) ;
 TYPE_2__* controller_get_interface () ;
 scalar_t__ stub1 () ;

void btm_read_remote_features_complete (UINT8 *p)
{
    tACL_CONN *p_acl_cb;
    UINT8 status;
    UINT16 handle;
    UINT8 acl_idx;

    BTM_TRACE_DEBUG ("btm_read_remote_features_complete\n");
    STREAM_TO_UINT8 (status, p);

    if (status != HCI_SUCCESS) {
        BTM_TRACE_ERROR ("btm_read_remote_features_complete failed (status 0x%02x)\n", status);
        return;
    }

    STREAM_TO_UINT16 (handle, p);

    if ((acl_idx = btm_handle_to_acl_index(handle)) >= MAX_L2CAP_LINKS) {
        BTM_TRACE_ERROR("btm_read_remote_features_complete handle=%d invalid\n", handle);
        return;
    }

    p_acl_cb = &btm_cb.acl_db[acl_idx];


    STREAM_TO_ARRAY(p_acl_cb->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0], p,
                    HCI_FEATURE_BYTES_PER_PAGE);

    if ((HCI_LMP_EXTENDED_SUPPORTED(p_acl_cb->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0])) &&
            (controller_get_interface()->supports_reading_remote_extended_features())) {



        BTM_TRACE_DEBUG ("Start reading remote extended features\n");
        btm_read_remote_ext_features(handle, HCI_EXT_FEATURES_PAGE_1);
        return;
    }



    btm_process_remote_ext_features (p_acl_cb, 1);


    btm_establish_continue (p_acl_cb);
}
