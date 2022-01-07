
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_9__ {int box_level; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_7__ {TYPE_3__* module; } ;
typedef int MP4_BOX_TYPE_T ;


 scalar_t__ MP4_BOX_MIN_HEADER_SIZE ;
 scalar_t__ STREAM_POSITION (TYPE_2__*) ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ mp4_read_box (TYPE_2__*,scalar_t__,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_read_boxes( VC_CONTAINER_T *p_ctx, int64_t size,
   MP4_BOX_TYPE_T type)
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   int64_t offset = STREAM_POSITION(p_ctx);
   bool unknown_size = size < 0;


   module->box_level++;
   while(status == VC_CONTAINER_SUCCESS &&
         (unknown_size || size >= MP4_BOX_MIN_HEADER_SIZE))
   {
      offset = STREAM_POSITION(p_ctx);
      status = mp4_read_box(p_ctx, size, type);
      if(!unknown_size) size -= (STREAM_POSITION(p_ctx) - offset);
   }
   module->box_level--;
   return status;
}
