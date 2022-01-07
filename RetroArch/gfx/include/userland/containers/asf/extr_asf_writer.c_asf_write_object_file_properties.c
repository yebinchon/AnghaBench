
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
struct TYPE_10__ {int packet_size; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_8__ {TYPE_3__* module; } ;


 int VC_CONTAINER_SUCCESS ;
 int WRITE_GUID (TYPE_2__*,int *,char*) ;
 int WRITE_U32 (TYPE_2__*,int ,char*) ;
 int WRITE_U64 (TYPE_2__*,int ,char*) ;
 int guid_null ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_write_object_file_properties( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;

   WRITE_GUID(p_ctx, &guid_null, "File ID");
   WRITE_U64(p_ctx, 0, "File Size");
   WRITE_U64(p_ctx, 0, "Creation Date");
   WRITE_U64(p_ctx, 0, "Data Packets Count");
   WRITE_U64(p_ctx, 0, "Play Duration");
   WRITE_U64(p_ctx, 0, "Send Duration");
   WRITE_U64(p_ctx, 0, "Preroll");
   WRITE_U32(p_ctx, 0, "Flags");
   WRITE_U32(p_ctx, module->packet_size, "Minimum Data Packet Size");
   WRITE_U32(p_ctx, module->packet_size, "Maximum Data Packet Size");
   WRITE_U32(p_ctx, 0, "Maximum Bitrate");

   return VC_CONTAINER_SUCCESS;
}
