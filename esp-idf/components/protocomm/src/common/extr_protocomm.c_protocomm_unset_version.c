
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ver; } ;
typedef TYPE_1__ protocomm_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int free (char*) ;
 int protocomm_remove_endpoint (TYPE_1__*,char const*) ;

esp_err_t protocomm_unset_version(protocomm_t *pc, const char *ep_name)
{
    if ((pc == ((void*)0)) || (ep_name == ((void*)0))) {
        return ESP_ERR_INVALID_ARG;
    }

    if (pc->ver) {
        free((char *)pc->ver);
        pc->ver = ((void*)0);
    }

    return protocomm_remove_endpoint(pc, ep_name);
}
