
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_MODULE_T ;
struct TYPE_6__ {int * module; } ;


 int MP4_BOX_TYPE_TEXT ;
 int STREAM_STATUS (TYPE_2__*) ;
 int VC_CONTAINER_ERROR_FAILED ;
 int VC_CONTAINER_PARAM_UNUSED (int *) ;
 int mp4_read_box (TYPE_2__*,scalar_t__,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_read_box_text( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_PARAM_UNUSED(module);

             if(1) return VC_CONTAINER_ERROR_FAILED;

   if(size > 0)
      return mp4_read_box( p_ctx, size, MP4_BOX_TYPE_TEXT );

   return STREAM_STATUS(p_ctx);
}
