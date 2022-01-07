
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wifi_prov_ctx_t ;


 int free (int *) ;

__attribute__((used)) static void free_config(wifi_prov_ctx_t **ctx)
{
    free(*ctx);
    *ctx = ((void*)0);
}
