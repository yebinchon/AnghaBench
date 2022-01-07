
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int cid; scalar_t__ mb_size; int * param_key; } ;
typedef TYPE_1__ mb_parameter_descriptor_t ;
struct TYPE_6__ {int mbm_param_descriptor_size; TYPE_1__ const* mbm_param_descriptor_table; } ;
typedef TYPE_2__ mb_master_options_t ;
typedef int esp_err_t ;
struct TYPE_7__ {TYPE_2__ opts; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int MB_MASTER_CHECK (int,int ,char*) ;
 TYPE_3__* mbm_interface_ptr ;

__attribute__((used)) static esp_err_t mbc_serial_master_set_descriptor(const mb_parameter_descriptor_t* descriptor, const uint16_t num_elements)
{
    MB_MASTER_CHECK((descriptor != ((void*)0)),
                        ESP_ERR_INVALID_ARG, "mb incorrect descriptor.");
    MB_MASTER_CHECK((num_elements >= 1),
                        ESP_ERR_INVALID_ARG, "mb table size is incorrect.");
    mb_master_options_t* mbm_opts = &mbm_interface_ptr->opts;
    const mb_parameter_descriptor_t *reg_ptr = descriptor;

    for (uint16_t counter = 0; counter < (num_elements); counter++, reg_ptr++)
    {

        MB_MASTER_CHECK((reg_ptr->cid == counter),
                            ESP_ERR_INVALID_ARG, "mb descriptor cid field is incorrect.");
        MB_MASTER_CHECK((reg_ptr->param_key != ((void*)0)),
                            ESP_ERR_INVALID_ARG, "mb descriptor param key is incorrect.");
        MB_MASTER_CHECK((reg_ptr->mb_size > 0),
                            ESP_ERR_INVALID_ARG, "mb descriptor param size is incorrect.");
    }
    mbm_opts->mbm_param_descriptor_table = descriptor;
    mbm_opts->mbm_param_descriptor_size = num_elements;
    return ESP_OK;
}
