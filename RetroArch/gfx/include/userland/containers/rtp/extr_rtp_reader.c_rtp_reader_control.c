
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int va_list ;
typedef int uint16_t ;
struct TYPE_9__ {int timestamp_base; int flags; void* expected_ssrc; int probation; } ;
typedef TYPE_3__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_10__ {TYPE_2__** tracks; } ;
typedef TYPE_4__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_CONTROL_T ;
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {TYPE_3__* module; } ;


 int SET_BIT (int ,int ) ;
 int TRACK_SSRC_SET ;



 int VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION ;
 int VC_CONTAINER_SUCCESS ;
 int init_sequence_number (TYPE_3__*,int ) ;
 int uint32_t ;
 void* va_arg (int ,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rtp_reader_control( VC_CONTAINER_T *p_ctx,
                                                VC_CONTAINER_CONTROL_T operation,
                                                va_list args)
{
   VC_CONTAINER_STATUS_T status;
   VC_CONTAINER_TRACK_MODULE_T *t_module = p_ctx->tracks[0]->priv->module;

   switch (operation)
   {
   case 128:
      {
         t_module->timestamp_base = va_arg(args, uint32_t);
         if (!t_module->timestamp_base)
            t_module->timestamp_base = 1;
         status = VC_CONTAINER_SUCCESS;
      }
      break;
   case 130:
      {
         init_sequence_number(t_module, (uint16_t)va_arg(args, uint32_t));
         t_module->probation = 0;
         status = VC_CONTAINER_SUCCESS;
      }
      break;
   case 129:
      {
         t_module->expected_ssrc = va_arg(args, uint32_t);
         SET_BIT(t_module->flags, TRACK_SSRC_SET);
         status = VC_CONTAINER_SUCCESS;
      }
      break;
   default:
      status = VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION;
   }

   return status;
}
