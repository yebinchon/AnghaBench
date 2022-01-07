
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ esp_sleep_pd_option_t ;
typedef size_t esp_sleep_pd_domain_t ;
typedef int esp_err_t ;
struct TYPE_2__ {scalar_t__* pd_options; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 size_t ESP_PD_DOMAIN_MAX ;
 scalar_t__ ESP_PD_OPTION_AUTO ;
 TYPE_1__ s_config ;

esp_err_t esp_sleep_pd_config(esp_sleep_pd_domain_t domain,
                                   esp_sleep_pd_option_t option)
{
    if (domain >= ESP_PD_DOMAIN_MAX || option > ESP_PD_OPTION_AUTO) {
        return ESP_ERR_INVALID_ARG;
    }
    s_config.pd_options[domain] = option;
    return ESP_OK;
}
