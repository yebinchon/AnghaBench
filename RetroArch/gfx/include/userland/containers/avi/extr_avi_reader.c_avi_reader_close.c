
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int tracks_num; TYPE_1__* priv; int * tracks; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_MODULE_T ;
struct TYPE_5__ {int * module; } ;


 int VC_CONTAINER_SUCCESS ;
 int free (int *) ;
 int vc_container_free_track (TYPE_2__*,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T avi_reader_close( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   unsigned int i;

   for(i = 0; i < p_ctx->tracks_num; i++)
      vc_container_free_track(p_ctx, p_ctx->tracks[i]);
   p_ctx->tracks = ((void*)0);
   p_ctx->tracks_num = 0;
   free(module);
   p_ctx->priv->module = 0;
   return VC_CONTAINER_SUCCESS;
}
