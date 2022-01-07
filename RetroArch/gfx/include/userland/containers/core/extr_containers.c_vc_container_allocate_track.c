
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct VC_CONTAINER_TRACK_MODULE_T {int dummy; } ;
struct TYPE_7__ {TYPE_3__* format; TYPE_2__* priv; } ;
typedef TYPE_1__ VC_CONTAINER_TRACK_T ;
struct TYPE_8__ {struct VC_CONTAINER_TRACK_MODULE_T* module; } ;
typedef TYPE_2__ VC_CONTAINER_TRACK_PRIVATE_T ;
typedef int VC_CONTAINER_T ;
struct TYPE_9__ {void* type; } ;
typedef TYPE_3__ VC_CONTAINER_ES_FORMAT_T ;


 int VC_CONTAINER_PARAM_UNUSED (int *) ;
 TYPE_1__* malloc (unsigned int) ;
 int memset (TYPE_1__*,int ,unsigned int) ;

VC_CONTAINER_TRACK_T *vc_container_allocate_track( VC_CONTAINER_T *context, unsigned int extra_size )
{
   VC_CONTAINER_TRACK_T *p_ctx;
   unsigned int size;
   VC_CONTAINER_PARAM_UNUSED(context);

   size = sizeof(*p_ctx) + sizeof(*p_ctx->priv) + sizeof(*p_ctx->format) +
      sizeof(*p_ctx->format->type) + extra_size;

   p_ctx = malloc(size);
   if(!p_ctx) return 0;

   memset(p_ctx, 0, size);
   p_ctx->priv = (VC_CONTAINER_TRACK_PRIVATE_T *)(p_ctx + 1);
   p_ctx->format = (VC_CONTAINER_ES_FORMAT_T *)(p_ctx->priv + 1);
   p_ctx->format->type = (void *)(p_ctx->format + 1);
   p_ctx->priv->module = (struct VC_CONTAINER_TRACK_MODULE_T *)(p_ctx->format->type + 1);
   return p_ctx;
}
