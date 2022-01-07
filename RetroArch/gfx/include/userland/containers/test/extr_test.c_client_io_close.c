
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_3__ {scalar_t__ module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
typedef int FILE ;


 int VC_CONTAINER_SUCCESS ;
 int fclose (int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T client_io_close( VC_CONTAINER_IO_T *p_ctx )
{
   FILE *fd = (FILE *)p_ctx->module;
   fclose(fd);
   return VC_CONTAINER_SUCCESS;
}
