
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int int64_t ;
struct TYPE_15__ {double frame_rate; void* aspect_ratio_type; void* display_unit; void* display_height; void* display_width; void* pixel_crop_right; void* pixel_crop_left; void* pixel_crop_top; void* pixel_crop_bottom; void* pixel_height; void* pixel_width; } ;
struct TYPE_16__ {TYPE_4__ video; } ;
struct TYPE_17__ {TYPE_5__ es_type; } ;
typedef TYPE_6__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_18__ {TYPE_1__* priv; } ;
typedef TYPE_7__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_19__ {TYPE_3__* parsing; } ;
typedef TYPE_8__ VC_CONTAINER_MODULE_T ;
struct TYPE_14__ {TYPE_2__* priv; } ;
struct TYPE_13__ {TYPE_6__* module; } ;
struct TYPE_12__ {TYPE_8__* module; } ;
typedef int MKV_ELEMENT_ID_T ;






 int MKV_ELEMENT_ID_FRAME_RATE ;






 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ mkv_read_element_data_float (TYPE_7__*,int ,double*) ;
 scalar_t__ mkv_read_element_data_uint (TYPE_7__*,int ,void**) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mkv_read_subelements_video( VC_CONTAINER_T *p_ctx, MKV_ELEMENT_ID_T id, int64_t size )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_MODULE_T *track_module = module->parsing->priv->module;
   uint64_t value;


   if(id == MKV_ELEMENT_ID_FRAME_RATE)
   {
      double fvalue;
      status = mkv_read_element_data_float(p_ctx, size, &fvalue);
      if(status != VC_CONTAINER_SUCCESS) return status;
      track_module->es_type.video.frame_rate = fvalue;
      return status;
   }


   status = mkv_read_element_data_uint(p_ctx, size, &value);
   if(status != VC_CONTAINER_SUCCESS) return status;

   switch(id)
   {
   case 128: track_module->es_type.video.pixel_width = value; break;
   case 129: track_module->es_type.video.pixel_height = value; break;
   case 133: track_module->es_type.video.pixel_crop_bottom = value; break;
   case 130: track_module->es_type.video.pixel_crop_top = value; break;
   case 132: track_module->es_type.video.pixel_crop_left = value; break;
   case 131: track_module->es_type.video.pixel_crop_right = value; break;
   case 134: track_module->es_type.video.display_width = value; break;
   case 136: track_module->es_type.video.display_height = value; break;
   case 135: track_module->es_type.video.display_unit = value; break;
   case 137: track_module->es_type.video.aspect_ratio_type = value; break;
   default: break;
   }

   return status;
}
