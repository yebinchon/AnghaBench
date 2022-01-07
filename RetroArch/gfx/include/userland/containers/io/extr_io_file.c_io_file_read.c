
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status; TYPE_1__* module; } ;
typedef TYPE_2__ VC_CONTAINER_IO_T ;
struct TYPE_4__ {int stream; } ;


 int VC_CONTAINER_ERROR_EOS ;
 int VC_CONTAINER_ERROR_FAILED ;
 scalar_t__ feof (int ) ;
 size_t fread (void*,int,size_t,int ) ;

__attribute__((used)) static size_t io_file_read(VC_CONTAINER_IO_T *p_ctx, void *buffer, size_t size)
{
   size_t ret = fread(buffer, 1, size, p_ctx->module->stream);
   if(ret != size)
   {

      if( ((int)ret) < 0 ) ret = 0;

      if( feof(p_ctx->module->stream) ) p_ctx->status = VC_CONTAINER_ERROR_EOS;
      else p_ctx->status = VC_CONTAINER_ERROR_FAILED;
   }
   return ret;
}
