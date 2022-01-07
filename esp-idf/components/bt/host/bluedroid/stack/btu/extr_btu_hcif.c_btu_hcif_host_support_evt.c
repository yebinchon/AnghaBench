
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int btm_sec_rmt_host_support_feat_evt (int *) ;

__attribute__((used)) static void btu_hcif_host_support_evt (UINT8 *p)
{
    btm_sec_rmt_host_support_feat_evt(p);
}
