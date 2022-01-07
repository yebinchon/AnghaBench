
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int length ;
struct TYPE_4__ {void* status; TYPE_2__* module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_5__ {int stream; int is_native_order; } ;
typedef TYPE_2__ VC_CONTAINER_IO_MODULE_T ;


 int SEEK_CUR ;
 void* VC_CONTAINER_ERROR_EOS ;
 void* VC_CONTAINER_ERROR_FAILED ;
 scalar_t__ feof (int ) ;
 size_t fread (void*,int,size_t,int ) ;
 int fseek (int ,long,int ) ;
 int swap_byte_order (int) ;
 int vc_container_assert (int) ;

__attribute__((used)) static size_t io_pktfile_read(VC_CONTAINER_IO_T *p_ctx, void *buffer, size_t size)
{
   VC_CONTAINER_IO_MODULE_T *module = p_ctx->module;
   uint32_t length = 0;
   size_t ret;

   ret = fread(&length, 1, sizeof(length), module->stream);
   if (ret != sizeof(length))
   {
      if( feof(module->stream) ) p_ctx->status = VC_CONTAINER_ERROR_EOS;
      else p_ctx->status = VC_CONTAINER_ERROR_FAILED;
      return 0;
   }

   if (!module->is_native_order)
      length = swap_byte_order(length);

   if (length > 1<<20)
   {
      p_ctx->status = VC_CONTAINER_ERROR_FAILED;
      return 0;
   }

   if (size > length)
      size = length;
   ret = fread(buffer, 1, size, module->stream);
   if(ret != size)
   {
      if( feof(module->stream) ) p_ctx->status = VC_CONTAINER_ERROR_EOS;
      else p_ctx->status = VC_CONTAINER_ERROR_FAILED;
   }
   else if (length > size)
   {

      length -= size;
      vc_container_assert((long)length > 0);
      fseek(module->stream, (long)length, SEEK_CUR);
   }

   return ret;
}
