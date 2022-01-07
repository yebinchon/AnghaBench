
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int size_word ;
struct TYPE_5__ {void* status; TYPE_1__* module; } ;
typedef TYPE_2__ VC_CONTAINER_IO_T ;
struct TYPE_4__ {int stream; } ;


 void* VC_CONTAINER_ERROR_FAILED ;
 scalar_t__ fflush (int ) ;
 size_t fwrite (void const*,int,size_t,int ) ;

__attribute__((used)) static size_t io_pktfile_write(VC_CONTAINER_IO_T *p_ctx, const void *buffer, size_t size)
{
   uint32_t size_word;
   size_t ret;

   if (size >= 0xFFFFFFFFUL)
      size_word = 0xFFFFFFFFUL;
   else
      size_word = (uint32_t)size;

   ret = fwrite(&size_word, 1, sizeof(size_word), p_ctx->module->stream);
   if (ret != sizeof(size_word))
   {
      p_ctx->status = VC_CONTAINER_ERROR_FAILED;
      return 0;
   }

   ret = fwrite(buffer, 1, size_word, p_ctx->module->stream);
   if (ret != size_word)
      p_ctx->status = VC_CONTAINER_ERROR_FAILED;
   if (fflush(p_ctx->module->stream) != 0)
      p_ctx->status = VC_CONTAINER_ERROR_FAILED;

   return ret;
}
