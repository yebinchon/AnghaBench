
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_SEEK_MODE_T ;
typedef int VC_CONTAINER_SEEK_FLAGS_T ;
struct TYPE_9__ {scalar_t__ mid_frame; scalar_t__ frame_read; scalar_t__ index; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_7__ {TYPE_3__* module; } ;


 scalar_t__ SEEK (TYPE_2__*,int ) ;
 scalar_t__ VC_CONTAINER_ERROR_FAILED ;
 int VC_CONTAINER_PARAM_UNUSED (int ) ;
 int VC_CONTAINER_SEEK_FLAG_FORWARD ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ rcv_seek_nearest_keyframe (TYPE_2__*,int *,int) ;
 scalar_t__ vc_container_index_get (scalar_t__,int,int *,int *,int*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rcv_reader_seek( VC_CONTAINER_T *p_ctx, int64_t *offset,
   VC_CONTAINER_SEEK_MODE_T mode, VC_CONTAINER_SEEK_FLAGS_T flags)
{
   int past = 1;
   int64_t position;
   int64_t timestamp = *offset;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FAILED;
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_PARAM_UNUSED(mode);

   if(module->index)
      status = vc_container_index_get(module->index, flags & VC_CONTAINER_SEEK_FLAG_FORWARD, &timestamp, &position, &past);

   if(status == VC_CONTAINER_SUCCESS && !past)
   {

      module->frame_read = 0;
      module->mid_frame = 0;
      *offset = timestamp;
      status = SEEK(p_ctx, position);
   }
   else
   {

      status = rcv_seek_nearest_keyframe(p_ctx, offset, flags & VC_CONTAINER_SEEK_FLAG_FORWARD);
   }

   return status;
}
