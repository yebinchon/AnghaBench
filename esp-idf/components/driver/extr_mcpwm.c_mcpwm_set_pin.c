
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ mcpwm_unit_t ;
struct TYPE_3__ {int mcpwm_cap2_in_num; int mcpwm_cap1_in_num; int mcpwm_cap0_in_num; int mcpwm_fault2_in_num; int mcpwm_fault1_in_num; int mcpwm_fault0_in_num; int mcpwm_sync2_in_num; int mcpwm_sync1_in_num; int mcpwm_sync0_in_num; int mcpwm2b_out_num; int mcpwm2a_out_num; int mcpwm1b_out_num; int mcpwm1a_out_num; int mcpwm0b_out_num; int mcpwm0a_out_num; } ;
typedef TYPE_1__ mcpwm_pin_config_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int MCPWM0A ;
 int MCPWM0B ;
 int MCPWM1A ;
 int MCPWM1B ;
 int MCPWM2A ;
 int MCPWM2B ;
 int MCPWM_CAP_0 ;
 int MCPWM_CAP_1 ;
 int MCPWM_CAP_2 ;
 int MCPWM_CHECK (int,int ,int ) ;
 int MCPWM_FAULT_0 ;
 int MCPWM_SYNC_0 ;
 int MCPWM_SYNC_1 ;
 int MCPWM_SYNC_2 ;
 scalar_t__ MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 int mcpwm_gpio_init (scalar_t__,int ,int ) ;

esp_err_t mcpwm_set_pin(mcpwm_unit_t mcpwm_num, const mcpwm_pin_config_t *mcpwm_pin)
{
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    mcpwm_gpio_init(mcpwm_num, MCPWM0A, mcpwm_pin->mcpwm0a_out_num);
    mcpwm_gpio_init(mcpwm_num, MCPWM0B, mcpwm_pin->mcpwm0b_out_num);
    mcpwm_gpio_init(mcpwm_num, MCPWM1A, mcpwm_pin->mcpwm1a_out_num);
    mcpwm_gpio_init(mcpwm_num, MCPWM1B, mcpwm_pin->mcpwm1b_out_num);
    mcpwm_gpio_init(mcpwm_num, MCPWM2A, mcpwm_pin->mcpwm2a_out_num);
    mcpwm_gpio_init(mcpwm_num, MCPWM2B, mcpwm_pin->mcpwm2b_out_num);
    mcpwm_gpio_init(mcpwm_num, MCPWM_SYNC_0, mcpwm_pin->mcpwm_sync0_in_num);
    mcpwm_gpio_init(mcpwm_num, MCPWM_SYNC_1, mcpwm_pin->mcpwm_sync1_in_num);
    mcpwm_gpio_init(mcpwm_num, MCPWM_SYNC_2, mcpwm_pin->mcpwm_sync2_in_num);
    mcpwm_gpio_init(mcpwm_num, MCPWM_FAULT_0, mcpwm_pin->mcpwm_fault0_in_num);
    mcpwm_gpio_init(mcpwm_num, MCPWM_FAULT_0, mcpwm_pin->mcpwm_fault1_in_num);
    mcpwm_gpio_init(mcpwm_num, MCPWM_FAULT_0, mcpwm_pin->mcpwm_fault2_in_num);
    mcpwm_gpio_init(mcpwm_num, MCPWM_CAP_0, mcpwm_pin->mcpwm_cap0_in_num);
    mcpwm_gpio_init(mcpwm_num, MCPWM_CAP_1, mcpwm_pin->mcpwm_cap1_in_num);
    mcpwm_gpio_init(mcpwm_num, MCPWM_CAP_2, mcpwm_pin->mcpwm_cap2_in_num);
    return ESP_OK;
}
