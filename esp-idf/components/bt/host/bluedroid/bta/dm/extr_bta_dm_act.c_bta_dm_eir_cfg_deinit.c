
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bta_dm_eir_url; scalar_t__ bta_dm_eir_url_len; int * bta_dm_eir_manufac_spec; scalar_t__ bta_dm_eir_manufac_spec_len; } ;


 int osi_free (int *) ;
 TYPE_1__* p_bta_dm_eir_cfg ;

__attribute__((used)) static void bta_dm_eir_cfg_deinit(void)
{
    p_bta_dm_eir_cfg->bta_dm_eir_manufac_spec_len = 0;
    if (p_bta_dm_eir_cfg->bta_dm_eir_manufac_spec) {
        osi_free(p_bta_dm_eir_cfg->bta_dm_eir_manufac_spec);
        p_bta_dm_eir_cfg->bta_dm_eir_manufac_spec = ((void*)0);
    }

    p_bta_dm_eir_cfg->bta_dm_eir_url_len = 0;
    if (p_bta_dm_eir_cfg->bta_dm_eir_url) {
        osi_free(p_bta_dm_eir_cfg->bta_dm_eir_url);
        p_bta_dm_eir_cfg->bta_dm_eir_url = ((void*)0);
    }
}
