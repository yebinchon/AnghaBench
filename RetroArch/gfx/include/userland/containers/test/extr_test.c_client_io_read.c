
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; scalar_t__ module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
typedef int FILE ;


 int LOG_DEBUG (int ,char*,size_t) ;
 int VC_CONTAINER_ERROR_EOS ;
 int VC_CONTAINER_ERROR_FAILED ;
 scalar_t__ feof (int *) ;
 size_t fread (void*,int,size_t,int *) ;

__attribute__((used)) static size_t client_io_read(VC_CONTAINER_IO_T *p_ctx, void *buffer, size_t size)
{
   FILE *fd = (FILE *)p_ctx->module;
   size_t ret = fread(buffer, 1, size, fd);
   if(ret != size)
   {

      if( ((int)ret) < 0 ) ret = 0;

      if( feof(fd) ) p_ctx->status = VC_CONTAINER_ERROR_EOS;
      else p_ctx->status = VC_CONTAINER_ERROR_FAILED;
   }
   LOG_DEBUG( 0, "read: %i", ret );
   return ret;
}
