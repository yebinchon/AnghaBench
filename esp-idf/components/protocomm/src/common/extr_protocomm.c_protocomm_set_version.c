
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ver; } ;
typedef TYPE_1__ protocomm_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int VER_EP ;
 scalar_t__ protocomm_add_endpoint_internal (TYPE_1__*,char const*,int ,void*,int ) ;
 int protocomm_version_handler ;
 int * strdup (char const*) ;

esp_err_t protocomm_set_version(protocomm_t *pc, const char *ep_name, const char *version)
{
    if ((pc == ((void*)0)) || (ep_name == ((void*)0)) || (version == ((void*)0))) {
        return ESP_ERR_INVALID_ARG;
    }

    if (pc->ver) {
        return ESP_ERR_INVALID_STATE;
    }

    pc->ver = strdup(version);
    if (pc->ver == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating version string");
        return ESP_ERR_NO_MEM;
    }

    esp_err_t ret = protocomm_add_endpoint_internal(pc, ep_name,
                                                    protocomm_version_handler,
                                                    (void *) pc, VER_EP);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Error adding version endpoint");
        return ret;
    }
    return ESP_OK;
}
