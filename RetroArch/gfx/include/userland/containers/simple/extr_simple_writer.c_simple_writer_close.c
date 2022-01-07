
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int tracks_num; TYPE_6__** tracks; TYPE_1__* priv; } ;
typedef TYPE_4__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_MODULE_T ;
struct TYPE_12__ {TYPE_3__* priv; } ;
struct TYPE_10__ {TYPE_2__* module; } ;
struct TYPE_9__ {int io; } ;
struct TYPE_8__ {int * module; } ;


 int VC_CONTAINER_SUCCESS ;
 int free (int *) ;
 int vc_container_free_track (TYPE_4__*,TYPE_6__*) ;
 int vc_container_io_close (int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T simple_writer_close( VC_CONTAINER_T *ctx )
{
   VC_CONTAINER_MODULE_T *module = ctx->priv->module;
   for (; ctx->tracks_num > 0; ctx->tracks_num--)
   {
      vc_container_io_close(ctx->tracks[ctx->tracks_num-1]->priv->module->io);
      vc_container_free_track(ctx, ctx->tracks[ctx->tracks_num-1]);
   }
   free(module);
   return VC_CONTAINER_SUCCESS;
}
