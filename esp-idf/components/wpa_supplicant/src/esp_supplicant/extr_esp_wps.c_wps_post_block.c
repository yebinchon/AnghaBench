
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ret; void* arg; } ;
typedef TYPE_1__ wps_ioctl_param_t ;
typedef int uint32_t ;


 int ESP_FAIL ;
 scalar_t__ ESP_OK ;
 scalar_t__ pdPASS ;
 int portMAX_DELAY ;
 int s_wps_api_sem ;
 scalar_t__ wps_post (int ,int ) ;
 scalar_t__ xSemaphoreTake (int ,int ) ;

int wps_post_block(uint32_t sig, void *arg)
{
    wps_ioctl_param_t param;

    param.ret = ESP_FAIL;
    param.arg = arg;

    if (ESP_OK != wps_post(sig, (uint32_t)&param)) {
        return ESP_FAIL;
    }

    if (pdPASS == xSemaphoreTake(s_wps_api_sem, portMAX_DELAY)) {
        return param.ret;
    } else {
        return ESP_FAIL;
    }
}
