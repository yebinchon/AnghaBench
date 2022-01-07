
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {scalar_t__ current_track; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_8__ {TYPE_3__* module; } ;


 int VC_CONTAINER_SUCCESS ;
 int WRITE_U16 (TYPE_2__*,scalar_t__,char*) ;
 int WRITE_U32 (TYPE_2__*,int ,char*) ;
 int WRITE_U64 (TYPE_2__*,int ,char*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_write_object_ext_stream_properties( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;

   WRITE_U64(p_ctx, 0, "Start Time");
   WRITE_U64(p_ctx, 0, "End Time");
   WRITE_U32(p_ctx, 0, "Data Bitrate");
   WRITE_U32(p_ctx, 0, "Buffer Size");
   WRITE_U32(p_ctx, 0, "Initial Buffer Fullness");
   WRITE_U32(p_ctx, 0, "Alternate Data Bitrate");
   WRITE_U32(p_ctx, 0, "Alternate Buffer Size");
   WRITE_U32(p_ctx, 0, "Alternate Initial Buffer Fullness");
   WRITE_U32(p_ctx, 0, "Maximum Object Size");
   WRITE_U32(p_ctx, 0, "Flags");
   WRITE_U16(p_ctx, module->current_track + 1, "Stream Number");
   WRITE_U16(p_ctx, 0, "Stream Language ID Index");
   WRITE_U64(p_ctx, 0, "Average Time Per Frame");
   WRITE_U16(p_ctx, 0, "Stream Name Count");
   WRITE_U16(p_ctx, 0, "Payload Extension System Count");




   return VC_CONTAINER_SUCCESS;
}
