
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bta_dm_eir_min_name_len; int bta_dm_eir_inq_tx_power; int * bta_dm_eir_url; scalar_t__ bta_dm_eir_url_len; int * bta_dm_eir_manufac_spec; scalar_t__ bta_dm_eir_manufac_spec_len; scalar_t__ bta_dm_eir_flags; int bta_dm_eir_included_tx_power; int bta_dm_eir_included_uuid; int bta_dm_eir_fec_required; } ;


 int BTM_EIR_DEFAULT_FEC_REQUIRED ;
 int FALSE ;
 int TRUE ;
 TYPE_1__* p_bta_dm_eir_cfg ;

__attribute__((used)) static void bta_dm_eir_cfg_init(void)
{
    p_bta_dm_eir_cfg->bta_dm_eir_fec_required = BTM_EIR_DEFAULT_FEC_REQUIRED;
    p_bta_dm_eir_cfg->bta_dm_eir_min_name_len = 50;

    p_bta_dm_eir_cfg->bta_dm_eir_included_uuid = TRUE;
    p_bta_dm_eir_cfg->bta_dm_eir_included_tx_power = FALSE;
    p_bta_dm_eir_cfg->bta_dm_eir_inq_tx_power = 3;
    p_bta_dm_eir_cfg->bta_dm_eir_flags = 0;

    p_bta_dm_eir_cfg->bta_dm_eir_manufac_spec_len = 0;
    p_bta_dm_eir_cfg->bta_dm_eir_manufac_spec = ((void*)0);

    p_bta_dm_eir_cfg->bta_dm_eir_url_len = 0;
    p_bta_dm_eir_cfg->bta_dm_eir_url = ((void*)0);
}
