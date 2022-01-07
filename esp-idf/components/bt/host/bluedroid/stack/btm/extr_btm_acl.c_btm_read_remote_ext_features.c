
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT16 ;


 int BTM_TRACE_DEBUG (char*,int ,int ) ;
 int btsnd_hcic_rmt_ext_features (int ,int ) ;

void btm_read_remote_ext_features (UINT16 handle, UINT8 page_number)
{
    BTM_TRACE_DEBUG("btm_read_remote_ext_features() handle: %d page: %d\n", handle, page_number);

    btsnd_hcic_rmt_ext_features(handle, page_number);
}
