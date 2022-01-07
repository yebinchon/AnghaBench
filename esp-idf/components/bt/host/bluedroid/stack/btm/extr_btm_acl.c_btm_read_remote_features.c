
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int peer_lmp_features; scalar_t__ num_read_pages; } ;
typedef TYPE_1__ tACL_CONN ;
typedef size_t UINT8 ;
typedef int UINT16 ;
struct TYPE_4__ {TYPE_1__* acl_db; } ;


 int BTM_TRACE_DEBUG (char*,int ) ;
 int BTM_TRACE_ERROR (char*,int ) ;
 size_t MAX_L2CAP_LINKS ;
 TYPE_2__ btm_cb ;
 size_t btm_handle_to_acl_index (int ) ;
 int btsnd_hcic_rmt_features_req (int ) ;
 int memset (int ,int ,int) ;

void btm_read_remote_features (UINT16 handle)
{
    UINT8 acl_idx;
    tACL_CONN *p_acl_cb;

    BTM_TRACE_DEBUG("btm_read_remote_features() handle: %d\n", handle);

    if ((acl_idx = btm_handle_to_acl_index(handle)) >= MAX_L2CAP_LINKS) {
        BTM_TRACE_ERROR("btm_read_remote_features handle=%d invalid\n", handle);
        return;
    }

    p_acl_cb = &btm_cb.acl_db[acl_idx];
    p_acl_cb->num_read_pages = 0;
    memset (p_acl_cb->peer_lmp_features, 0, sizeof(p_acl_cb->peer_lmp_features));



    btsnd_hcic_rmt_features_req (handle);
}
