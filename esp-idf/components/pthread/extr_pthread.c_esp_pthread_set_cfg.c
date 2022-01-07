
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ stack_size; } ;
typedef TYPE_1__ esp_pthread_cfg_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NO_MEM ;
 scalar_t__ PTHREAD_STACK_MIN ;
 TYPE_1__* malloc (int) ;
 TYPE_1__* pthread_getspecific (int ) ;
 int pthread_setspecific (int ,TYPE_1__*) ;
 int s_pthread_cfg_key ;

esp_err_t esp_pthread_set_cfg(const esp_pthread_cfg_t *cfg)
{
    if (cfg->stack_size < PTHREAD_STACK_MIN) {
        return ESP_ERR_INVALID_ARG;
    }


    esp_pthread_cfg_t *p = pthread_getspecific(s_pthread_cfg_key);
    if (!p) {
        p = malloc(sizeof(esp_pthread_cfg_t));
        if (!p) {
            return ESP_ERR_NO_MEM;
        }
    }
    *p = *cfg;
    pthread_setspecific(s_pthread_cfg_key, p);
    return 0;
}
