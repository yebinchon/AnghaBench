
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ tracks_num; TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {scalar_t__ current_track; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_8__ {TYPE_3__* module; } ;


 int ASF_OBJECT_TYPE_FILE_PROPS ;
 int ASF_OBJECT_TYPE_HEADER_EXT ;
 int ASF_OBJECT_TYPE_STREAM_PROPS ;
 int VC_CONTAINER_SUCCESS ;
 int WRITE_U32 (TYPE_2__*,int ,char*) ;
 int WRITE_U8 (TYPE_2__*,int ,char*) ;
 int asf_write_object (TYPE_2__*,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_write_object_header( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;

   WRITE_U32(p_ctx, 0, "Number of Header Objects");
   WRITE_U8(p_ctx, 0, "Reserved1");
   WRITE_U8(p_ctx, 0, "Reserved2");

   status = asf_write_object(p_ctx, ASF_OBJECT_TYPE_FILE_PROPS);
   status = asf_write_object(p_ctx, ASF_OBJECT_TYPE_HEADER_EXT);

   for(module->current_track = 0; module->current_track < p_ctx->tracks_num;
       module->current_track++)
   {
      status = asf_write_object(p_ctx, ASF_OBJECT_TYPE_STREAM_PROPS);
   }





   return status;
}
