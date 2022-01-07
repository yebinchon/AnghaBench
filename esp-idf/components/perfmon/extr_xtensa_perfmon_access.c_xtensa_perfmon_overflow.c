
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int esp_err_t ;


 int ERI_PERFMON_MAX ;
 scalar_t__ ERI_PERFMON_PMSTAT0 ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_OK ;
 int eri_read (scalar_t__) ;

esp_err_t xtensa_perfmon_overflow(int id)
{
    if (id >= ERI_PERFMON_MAX) {
        return ESP_ERR_INVALID_ARG;
    }
    uint32_t result = eri_read(ERI_PERFMON_PMSTAT0 + id * sizeof(int32_t));
    if (result & 1) {
        return ESP_FAIL;
    }
    return ESP_OK;
}
