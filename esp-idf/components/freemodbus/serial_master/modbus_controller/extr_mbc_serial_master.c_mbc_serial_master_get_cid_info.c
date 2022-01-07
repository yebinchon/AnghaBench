
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_5__ {int * param_key; } ;
typedef TYPE_1__ mb_parameter_descriptor_t ;
struct TYPE_6__ {size_t mbm_param_descriptor_size; TYPE_1__* mbm_param_descriptor_table; } ;
typedef TYPE_2__ mb_master_options_t ;
typedef int esp_err_t ;
struct TYPE_7__ {TYPE_2__ opts; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 int MB_MASTER_CHECK (int,int ,char*) ;
 TYPE_3__* mbm_interface_ptr ;

__attribute__((used)) static esp_err_t mbc_serial_master_get_cid_info(uint16_t cid, const mb_parameter_descriptor_t** param_buffer)
{
    MB_MASTER_CHECK((mbm_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Master interface uninitialized.");
    mb_master_options_t* mbm_opts = &mbm_interface_ptr->opts;

    MB_MASTER_CHECK((param_buffer != ((void*)0)),
                        ESP_ERR_INVALID_ARG, "mb incorrect data buffer pointer.");
    MB_MASTER_CHECK((mbm_opts->mbm_param_descriptor_table != ((void*)0)),
                        ESP_ERR_INVALID_ARG, "mb incorrect descriptor table or not set.");
    MB_MASTER_CHECK((cid < mbm_opts->mbm_param_descriptor_size),
                        ESP_ERR_NOT_FOUND, "mb incorrect cid of characteristic.");


    const mb_parameter_descriptor_t* reg_info = &mbm_opts->mbm_param_descriptor_table[cid];

    MB_MASTER_CHECK((reg_info->param_key != ((void*)0)),
                        ESP_ERR_INVALID_ARG, "mb incorrect characteristic key.");
    *param_buffer = reg_info;
    return ESP_OK;
}
