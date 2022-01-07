
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ tracks_num; TYPE_4__** tracks; } ;
typedef TYPE_1__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_11__ {scalar_t__ es_type; int extradata_size; } ;
typedef TYPE_2__ VC_CONTAINER_ES_FORMAT_T ;
struct TYPE_12__ {int format; } ;


 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 scalar_t__ VC_CONTAINER_ERROR_TRACK_FORMAT_NOT_SUPPORTED ;
 scalar_t__ VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION ;
 scalar_t__ VC_CONTAINER_ES_TYPE_VIDEO ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 TYPE_4__* vc_container_allocate_track (TYPE_1__*,int ) ;
 int vc_container_format_copy (int ,TYPE_2__*,int ) ;
 scalar_t__ vc_container_track_allocate_extradata (TYPE_1__*,TYPE_4__*,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T simple_write_add_track( VC_CONTAINER_T *ctx,
   VC_CONTAINER_ES_FORMAT_T *format )
{
   VC_CONTAINER_STATUS_T status;


   if (ctx->tracks_num)
      return VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION;
   if (format->es_type != VC_CONTAINER_ES_TYPE_VIDEO)
      return VC_CONTAINER_ERROR_TRACK_FORMAT_NOT_SUPPORTED;


   ctx->tracks[0] = vc_container_allocate_track(ctx, 0);
   if (!ctx->tracks[0])
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;

   status = vc_container_track_allocate_extradata(ctx,
      ctx->tracks[0], format->extradata_size);
   if(status != VC_CONTAINER_SUCCESS)
      return status;

   vc_container_format_copy(ctx->tracks[0]->format, format,
      format->extradata_size);
   ctx->tracks_num++;
   return VC_CONTAINER_SUCCESS;
}
