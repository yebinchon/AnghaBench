
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
typedef int VC_CONTAINER_TRACK_T ;
struct TYPE_4__ {int tracks_num; int ** tracks; } ;
typedef TYPE_1__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_CONTROL_T ;




 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_ERROR_OUT_OF_RESOURCES ;
 int VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION ;
 int VC_CONTAINER_PARAM_UNUSED (int ) ;
 int VC_CONTAINER_SUCCESS ;
 int * vc_container_allocate_track (TYPE_1__*,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T dummy_writer_control( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_CONTROL_T operation, va_list args )
{
   VC_CONTAINER_TRACK_T *track;
   VC_CONTAINER_PARAM_UNUSED(args);

   switch(operation)
   {
   case 129:
      if(p_ctx->tracks_num >= 2) return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;


      p_ctx->tracks[p_ctx->tracks_num] = track = vc_container_allocate_track(p_ctx, 0);
      if(!track) return VC_CONTAINER_ERROR_OUT_OF_MEMORY;

      p_ctx->tracks_num++;
      return VC_CONTAINER_SUCCESS;

   case 128:
      return VC_CONTAINER_SUCCESS;

   default: return VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION;
   }
}
