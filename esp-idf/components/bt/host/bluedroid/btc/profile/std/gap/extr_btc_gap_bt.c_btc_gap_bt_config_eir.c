
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int bta_dm_eir_url; int bta_dm_eir_url_len; int bta_dm_eir_manufac_spec; int bta_dm_eir_manufac_spec_len; int bta_dm_eir_flags; int bta_dm_eir_included_uuid; int bta_dm_eir_included_tx_power; int bta_dm_eir_fec_required; } ;
typedef TYPE_2__ tBTA_DM_EIR_CONF ;
struct TYPE_9__ {int p_url; int url_len; int p_manufacturer_data; int manufacturer_len; int flag; int include_uuid; int include_txpower; int fec_required; } ;
typedef TYPE_3__ esp_bt_eir_data_t ;
struct TYPE_7__ {TYPE_3__ eir_data; } ;
struct TYPE_10__ {TYPE_1__ config_eir; } ;
typedef TYPE_4__ btc_gap_bt_args_t ;


 int BTA_DmConfigEir (TYPE_2__*) ;

__attribute__((used)) static void btc_gap_bt_config_eir(btc_gap_bt_args_t *arg)
{
    tBTA_DM_EIR_CONF eir_config;
    esp_bt_eir_data_t *eir_data = &arg->config_eir.eir_data;

    eir_config.bta_dm_eir_fec_required = eir_data->fec_required;
    eir_config.bta_dm_eir_included_tx_power = eir_data->include_txpower;
    eir_config.bta_dm_eir_included_uuid = eir_data->include_uuid;
    eir_config.bta_dm_eir_flags = eir_data->flag;
    eir_config.bta_dm_eir_manufac_spec_len = eir_data->manufacturer_len;
    eir_config.bta_dm_eir_manufac_spec = eir_data->p_manufacturer_data;
    eir_config.bta_dm_eir_url_len = eir_data->url_len;
    eir_config.bta_dm_eir_url = eir_data->p_url;

    BTA_DmConfigEir(&eir_config);
}
