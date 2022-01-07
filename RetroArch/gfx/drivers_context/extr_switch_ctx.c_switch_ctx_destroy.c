
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resize; int egl; } ;
typedef TYPE_1__ switch_ctx_data_t ;


 int egl_destroy (int *) ;
 int free (TYPE_1__*) ;

void switch_ctx_destroy(void *data)
{
    switch_ctx_data_t *ctx_nx = (switch_ctx_data_t *)data;

    if (ctx_nx)
    {



        ctx_nx->resize = 0;
        free(ctx_nx);
    }
}
