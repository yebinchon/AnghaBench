
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct VC_CONTAINER_IO_ASYNC_T {int dummy; } ;
typedef int VC_CONTAINER_STATUS_T ;


 int VC_CONTAINER_PARAM_UNUSED (struct VC_CONTAINER_IO_ASYNC_T*) ;
 int VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T async_io_stop( struct VC_CONTAINER_IO_ASYNC_T *ctx )
{
   VC_CONTAINER_PARAM_UNUSED(ctx);
   return VC_CONTAINER_SUCCESS;
}
