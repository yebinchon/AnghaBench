
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resize; int egl; } ;
typedef TYPE_1__ vivante_ctx_data_t ;


 int egl_destroy (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void gfx_ctx_vivante_destroy(void *data)
{
   vivante_ctx_data_t *viv = (vivante_ctx_data_t*)data;

   if (viv)
   {




      viv->resize = 0;
      free(viv);
   }

}
