
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; int * drm; scalar_t__ tracks_num; int * tracks; scalar_t__ capabilities; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
struct TYPE_5__ {int * tmp_io; int * pf_control; int * pf_seek; int * pf_write; int * pf_read; int * pf_close; int * module; } ;


 int vc_container_assert (TYPE_2__*) ;

__attribute__((used)) static void reset_context(VC_CONTAINER_T *p_ctx)
{
   vc_container_assert(p_ctx);

   p_ctx->capabilities = 0;
   p_ctx->tracks = ((void*)0);
   p_ctx->tracks_num = 0;
   p_ctx->drm = ((void*)0);
   p_ctx->priv->module = ((void*)0);
   p_ctx->priv->pf_close = ((void*)0);
   p_ctx->priv->pf_read = ((void*)0);
   p_ctx->priv->pf_write = ((void*)0);
   p_ctx->priv->pf_seek = ((void*)0);
   p_ctx->priv->pf_control = ((void*)0);
   p_ctx->priv->tmp_io = ((void*)0);
}
