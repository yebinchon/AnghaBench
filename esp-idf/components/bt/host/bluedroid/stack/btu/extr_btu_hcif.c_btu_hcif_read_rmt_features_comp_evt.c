
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int btm_read_remote_features_complete (int *) ;

__attribute__((used)) static void btu_hcif_read_rmt_features_comp_evt (UINT8 *p)
{
    btm_read_remote_features_complete(p);
}
