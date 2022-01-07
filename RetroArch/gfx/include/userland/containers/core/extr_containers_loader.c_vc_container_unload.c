
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
struct TYPE_4__ {int * module_handle; } ;


 int unload_library (int *) ;

void vc_container_unload(VC_CONTAINER_T *p_ctx)
{
   if (p_ctx->priv->module_handle)
   {
      unload_library(p_ctx->priv->module_handle);
      p_ctx->priv->module_handle = ((void*)0);
   }
}
