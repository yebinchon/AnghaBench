
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float refresh_rate; } ;
typedef TYPE_1__ switch_ctx_data_t ;



__attribute__((used)) static float switch_ctx_get_refresh_rate(void *data)
{
    switch_ctx_data_t *ctx_nx = (switch_ctx_data_t *)data;

    return ctx_nx->refresh_rate;
}
