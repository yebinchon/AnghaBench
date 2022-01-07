
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * httpd; } ;
typedef TYPE_1__ esp_local_ctrl_transport_config_t ;


 int free (int *) ;

__attribute__((used)) static void free_config(esp_local_ctrl_transport_config_t *config)
{
    if (config && config->httpd) {
        free(config->httpd);
        config->httpd = ((void*)0);
    }
}
