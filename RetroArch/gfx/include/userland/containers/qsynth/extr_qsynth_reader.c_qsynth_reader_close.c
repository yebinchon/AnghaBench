
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int tracks_num; int * tracks; TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {struct TYPE_10__* next; struct TYPE_10__* seg; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_8__ {TYPE_3__* module; } ;
typedef TYPE_3__ QSYNTH_SEGMENT_T ;


 int VC_CONTAINER_SUCCESS ;
 int free (TYPE_3__*) ;
 int vc_container_free_track (TYPE_2__*,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T qsynth_reader_close( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   QSYNTH_SEGMENT_T *seg = module->seg;
   for(; p_ctx->tracks_num > 0; p_ctx->tracks_num--)
      vc_container_free_track(p_ctx, p_ctx->tracks[p_ctx->tracks_num-1]);
   while(seg != ((void*)0))
   {
      QSYNTH_SEGMENT_T *next = seg->next;
      free(seg);
      seg = next;
   }
   free(module);
   return VC_CONTAINER_SUCCESS;
}
