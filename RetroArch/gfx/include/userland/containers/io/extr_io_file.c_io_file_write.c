
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* module; } ;
typedef TYPE_2__ VC_CONTAINER_IO_T ;
struct TYPE_4__ {int stream; } ;


 size_t fwrite (void const*,int,size_t,int ) ;

__attribute__((used)) static size_t io_file_write(VC_CONTAINER_IO_T *p_ctx, const void *buffer, size_t size)
{
   return fwrite(buffer, 1, size, p_ctx->module->stream);
}
