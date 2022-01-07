
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ int64_t ;
struct TYPE_16__ {size_t track; scalar_t__ dts; int size; } ;
struct TYPE_14__ {int reader; TYPE_7__ info; } ;
typedef TYPE_5__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_15__ {size_t tracks_num; TYPE_4__* priv; TYPE_2__** tracks; } ;
typedef TYPE_6__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
typedef TYPE_7__ VC_CONTAINER_PACKET_T ;
struct TYPE_13__ {TYPE_3__* module; } ;
struct TYPE_12__ {TYPE_5__* current_track; } ;
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {TYPE_5__* module; } ;


 scalar_t__ MAXIMUM_INT64 ;
 scalar_t__ VC_CONTAINER_ERROR_ABORTED ;
 int VC_CONTAINER_READ_FLAG_INFO ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ vc_container_read (int ,TYPE_7__*,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rtsp_update_track_info( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   uint32_t tracks_num = p_ctx->tracks_num;
   uint32_t track_idx;
   int64_t earliest_dts = MAXIMUM_INT64;
   VC_CONTAINER_TRACK_MODULE_T *earliest_track = ((void*)0);


   p_ctx->priv->module->current_track = ((void*)0);


   for (track_idx = 0; track_idx < tracks_num; track_idx++)
   {
      VC_CONTAINER_TRACK_MODULE_T *t_module = p_ctx->tracks[track_idx]->priv->module;
      VC_CONTAINER_PACKET_T *info = &t_module->info;


      if (!info->size)
      {

         status = vc_container_read(t_module->reader, info, VC_CONTAINER_READ_FLAG_INFO);

         info->track = track_idx;
      }

      if (status == VC_CONTAINER_SUCCESS)
      {
         if (info->dts < earliest_dts)
         {
            earliest_dts = info->dts;
            earliest_track = t_module;
         }
      }
      else if (status != VC_CONTAINER_ERROR_ABORTED)
      {

         return status;
      }
   }

   p_ctx->priv->module->current_track = earliest_track;

   return VC_CONTAINER_SUCCESS;
}
