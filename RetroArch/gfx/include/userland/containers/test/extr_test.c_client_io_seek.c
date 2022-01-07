
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef void* VC_CONTAINER_STATUS_T ;
struct TYPE_3__ {void* status; scalar_t__ module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
typedef int FILE ;


 int LOG_ERROR (int ,char*) ;
 int SEEK_SET ;
 scalar_t__ UINT_MAX ;
 void* VC_CONTAINER_ERROR_EOS ;
 void* VC_CONTAINER_ERROR_FAILED ;
 void* VC_CONTAINER_SUCCESS ;
 scalar_t__ feof (int *) ;
 int fseek (int *,long,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T client_io_seek(VC_CONTAINER_IO_T *p_ctx, int64_t offset)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   FILE *fd = (FILE *)p_ctx->module;
   int ret;


   if (offset > (int64_t)UINT_MAX)
   {
      LOG_ERROR( 0, "no large file support");
      p_ctx->status = VC_CONTAINER_ERROR_EOS;
      return VC_CONTAINER_ERROR_EOS;
   }

   ret = fseek(fd, (long)offset, SEEK_SET);
   if(ret)
   {
      if( feof(fd) ) status = VC_CONTAINER_ERROR_EOS;
      else status = VC_CONTAINER_ERROR_FAILED;
   }

   p_ctx->status = status;
   return status;
}
