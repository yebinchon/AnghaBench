
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_3__ {scalar_t__ tmo; unsigned int start; scalar_t__ elapsed; } ;
typedef TYPE_1__ esp_apptrace_tmo_t ;


 void* ESP_APPTRACE_CPUTICKS2US (int,int) ;
 scalar_t__ ESP_APPTRACE_TMO_INFINITE ;
 int ESP_ERR_TIMEOUT ;
 int ESP_OK ;
 int esp_clk_cpu_freq () ;
 unsigned int portGET_RUN_TIME_COUNTER_VALUE () ;

esp_err_t esp_apptrace_tmo_check(esp_apptrace_tmo_t *tmo)
{
    int cpu_freq = esp_clk_cpu_freq();
    if (tmo->tmo != ESP_APPTRACE_TMO_INFINITE) {
        unsigned cur = portGET_RUN_TIME_COUNTER_VALUE();
        if (tmo->start <= cur) {
            tmo->elapsed = ESP_APPTRACE_CPUTICKS2US(cur - tmo->start, cpu_freq);
        } else {
            tmo->elapsed = ESP_APPTRACE_CPUTICKS2US(0xFFFFFFFF - tmo->start + cur, cpu_freq);
        }
        if (tmo->elapsed >= tmo->tmo) {
            return ESP_ERR_TIMEOUT;
        }
    }
    return ESP_OK;
}
