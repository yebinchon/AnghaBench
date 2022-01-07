
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sm4; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int UINT8 ;
typedef int * BD_FEATURES ;
typedef int BD_ADDR ;


 scalar_t__ BTM_SEC_IS_SM4_UNKNOWN (int ) ;
 int BTM_SM4_KNOWN ;
 int BTM_SM4_TRUE ;
 int BTM_TRACE_EVENT (char*,int ,int ) ;
 int HCI_FEATURE_BYTES_PER_PAGE ;
 scalar_t__ HCI_SSP_HOST_SUPPORTED (int *) ;
 int STREAM_TO_ARRAY (int *,int *,int ) ;
 int STREAM_TO_BDADDR (int ,int *) ;
 TYPE_1__* btm_find_or_alloc_dev (int ) ;

void btm_sec_rmt_host_support_feat_evt (UINT8 *p)
{
    tBTM_SEC_DEV_REC *p_dev_rec;
    BD_ADDR bd_addr;
    BD_FEATURES features;

    STREAM_TO_BDADDR (bd_addr, p);
    p_dev_rec = btm_find_or_alloc_dev (bd_addr);

    BTM_TRACE_EVENT ("btm_sec_rmt_host_support_feat_evt  sm4: 0x%x  p[0]: 0x%x\n", p_dev_rec->sm4, p[0]);

    if (BTM_SEC_IS_SM4_UNKNOWN(p_dev_rec->sm4)) {
        p_dev_rec->sm4 = BTM_SM4_KNOWN;
        STREAM_TO_ARRAY(features, p, HCI_FEATURE_BYTES_PER_PAGE);
        if (HCI_SSP_HOST_SUPPORTED(features)) {
            p_dev_rec->sm4 = BTM_SM4_TRUE;
        }
        BTM_TRACE_EVENT ("btm_sec_rmt_host_support_feat_evt sm4: 0x%x features[0]: 0x%x\n", p_dev_rec->sm4, features[0]);
    }
}
