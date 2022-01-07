
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_9__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {double duration; int timecode_scale; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_8__ {TYPE_3__* module; } ;
typedef int MKV_ELEMENT_ID_T ;







 int SKIP_STRING (TYPE_2__*,int ,char*) ;
 int VC_CONTAINER_SUCCESS ;
 int mkv_read_element_data_float (TYPE_2__*,int ,double*) ;
 int mkv_read_element_data_uint (TYPE_2__*,int ,int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mkv_read_subelements_info( VC_CONTAINER_T *p_ctx, MKV_ELEMENT_ID_T id, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   uint64_t value;
   double fvalue;

   switch(id)
   {
   case 130:
      status = mkv_read_element_data_uint(p_ctx, size, &value);
      if(status != VC_CONTAINER_SUCCESS) break;
      module->timecode_scale = value;
      break;
   case 132:
      status = mkv_read_element_data_float(p_ctx, size, &fvalue);
      if(status != VC_CONTAINER_SUCCESS) break;
      module->duration = fvalue;
      break;
   case 129:
   case 131:
   case 128:
      SKIP_STRING(p_ctx, size, "string");
      break;

   default: break;
   }

   return status;
}
