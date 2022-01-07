
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tACL_CONN ;
typedef size_t UINT8 ;
typedef int UINT16 ;
struct TYPE_2__ {int * acl_db; } ;


 int BTM_TRACE_ERROR (char*,int ) ;
 int BTM_TRACE_WARNING (char*,size_t,int ) ;
 size_t MAX_L2CAP_LINKS ;
 TYPE_1__ btm_cb ;
 int btm_establish_continue (int *) ;
 size_t btm_handle_to_acl_index (int ) ;
 int btm_process_remote_ext_features (int *,int) ;

void btm_read_remote_ext_features_failed (UINT8 status, UINT16 handle)
{
    tACL_CONN *p_acl_cb;
    UINT8 acl_idx;

    BTM_TRACE_WARNING ("btm_read_remote_ext_features_failed (status 0x%02x) for handle %d\n",
                       status, handle);

    if ((acl_idx = btm_handle_to_acl_index(handle)) >= MAX_L2CAP_LINKS) {
        BTM_TRACE_ERROR("btm_read_remote_ext_features_failed handle=%d invalid\n", handle);
        return;
    }

    p_acl_cb = &btm_cb.acl_db[acl_idx];


    btm_process_remote_ext_features (p_acl_cb, 1);


    btm_establish_continue (p_acl_cb);
}
