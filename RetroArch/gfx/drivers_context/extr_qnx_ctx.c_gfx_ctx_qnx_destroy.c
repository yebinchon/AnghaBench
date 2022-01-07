
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int egl; } ;
typedef TYPE_1__ qnx_ctx_data_t ;


 int egl_destroy (int *) ;
 int free (void*) ;

__attribute__((used)) static void gfx_ctx_qnx_destroy(void *data)
{
   qnx_ctx_data_t *qnx = (qnx_ctx_data_t*)data;





   free(data);
}
