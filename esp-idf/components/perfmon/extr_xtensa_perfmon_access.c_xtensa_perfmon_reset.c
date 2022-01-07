
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_err_t ;


 int ERI_PERFMON_MAX ;
 scalar_t__ ERI_PERFMON_PM0 ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int eri_write (scalar_t__,int ) ;

esp_err_t xtensa_perfmon_reset(int id)
{
    if (id >= ERI_PERFMON_MAX) {
        return ESP_ERR_INVALID_ARG;
    }
    eri_write(ERI_PERFMON_PM0 + id * sizeof(int32_t), 0);
    return ESP_OK;
}
