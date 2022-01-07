
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wifi_cfg; } ;
typedef TYPE_1__ wifi_prov_ctx_t ;
typedef int wifi_config_t ;



__attribute__((used)) static wifi_config_t *get_config(wifi_prov_ctx_t **ctx)
{
    return (*ctx ? &(*ctx)->wifi_cfg : ((void*)0));
}
