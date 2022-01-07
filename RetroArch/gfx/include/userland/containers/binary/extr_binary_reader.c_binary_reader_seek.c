
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int * VC_CONTAINER_SEEK_MODE_T ;
typedef int * VC_CONTAINER_SEEK_FLAGS_T ;
typedef int VC_CONTAINER_MODULE_T ;
struct TYPE_4__ {int * module; } ;


 int VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION ;
 int VC_CONTAINER_PARAM_UNUSED (int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T binary_reader_seek( VC_CONTAINER_T *p_ctx, int64_t *offset,
   VC_CONTAINER_SEEK_MODE_T mode, VC_CONTAINER_SEEK_FLAGS_T flags)
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_PARAM_UNUSED(module);
   VC_CONTAINER_PARAM_UNUSED(offset);
   VC_CONTAINER_PARAM_UNUSED(mode);
   VC_CONTAINER_PARAM_UNUSED(flags);
   return VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION;
}
