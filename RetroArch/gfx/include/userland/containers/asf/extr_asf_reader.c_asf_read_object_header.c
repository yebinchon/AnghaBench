
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_10__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_11__ {int object_level; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_9__ {TYPE_3__* module; } ;


 scalar_t__ ASF_OBJECT_HEADER_SIZE ;
 int SKIP_U32 (TYPE_2__*,char*) ;
 int SKIP_U8 (TYPE_2__*,char*) ;
 scalar_t__ STREAM_POSITION (TYPE_2__*) ;
 scalar_t__ VC_CONTAINER_ERROR_CORRUPTED ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ asf_read_object (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_read_object_header( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   int64_t offset = STREAM_POSITION(p_ctx);


   if((size -= 6) < 0) return VC_CONTAINER_ERROR_CORRUPTED;

   SKIP_U32(p_ctx, "Number of Header Objects");
   SKIP_U8(p_ctx, "Reserved1");
   SKIP_U8(p_ctx, "Reserved2");


   module->object_level++;
   while(status == VC_CONTAINER_SUCCESS && size >= ASF_OBJECT_HEADER_SIZE)
   {
      offset = STREAM_POSITION(p_ctx);
      status = asf_read_object(p_ctx, size);
      size -= (STREAM_POSITION(p_ctx) - offset);
   }
   module->object_level--;

   return status;
}
