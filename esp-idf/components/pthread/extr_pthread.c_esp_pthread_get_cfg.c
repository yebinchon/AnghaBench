
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_pthread_cfg_t ;
typedef int esp_err_t ;


 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 int memset (int *,int ,int) ;
 int * pthread_getspecific (int ) ;
 int s_pthread_cfg_key ;

esp_err_t esp_pthread_get_cfg(esp_pthread_cfg_t *p)
{
    esp_pthread_cfg_t *cfg = pthread_getspecific(s_pthread_cfg_key);
    if (cfg) {
        *p = *cfg;
        return ESP_OK;
    }
    memset(p, 0, sizeof(*p));
    return ESP_ERR_NOT_FOUND;
}
