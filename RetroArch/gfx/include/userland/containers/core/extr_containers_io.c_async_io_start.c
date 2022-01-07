
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct VC_CONTAINER_IO_ASYNC_T {int dummy; } ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_IO_T ;


 int VC_CONTAINER_ERROR_FAILED ;
 int VC_CONTAINER_PARAM_UNUSED (int) ;

__attribute__((used)) static struct VC_CONTAINER_IO_ASYNC_T *async_io_start( VC_CONTAINER_IO_T *io, int num_areas, VC_CONTAINER_STATUS_T *status )
{
   VC_CONTAINER_PARAM_UNUSED(io);
   VC_CONTAINER_PARAM_UNUSED(num_areas);
   if(status) *status = VC_CONTAINER_ERROR_FAILED;
   return 0;
}
