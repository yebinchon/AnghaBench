
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_8__ {TYPE_1__* priv; int (* pf_close ) (TYPE_2__*) ;} ;
typedef TYPE_2__ VC_CONTAINER_FILTER_T ;
struct TYPE_7__ {scalar_t__ handle; } ;


 int VC_CONTAINER_SUCCESS ;
 int free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;
 int vc_container_filter_unload (TYPE_2__*) ;

VC_CONTAINER_STATUS_T vc_container_filter_close( VC_CONTAINER_FILTER_T *p_ctx )
{
   if (p_ctx)
   {
      if(p_ctx->pf_close) p_ctx->pf_close(p_ctx);
      if(p_ctx->priv && p_ctx->priv->handle) vc_container_filter_unload(p_ctx);
      free(p_ctx);
   }
   return VC_CONTAINER_SUCCESS;
}
