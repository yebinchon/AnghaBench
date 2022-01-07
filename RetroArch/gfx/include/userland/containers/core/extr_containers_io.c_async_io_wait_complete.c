
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct VC_CONTAINER_IO_ASYNC_T {int dummy; } ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_IO_PRIVATE_CACHE_T ;


 int VC_CONTAINER_PARAM_UNUSED (int) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T async_io_wait_complete( struct VC_CONTAINER_IO_ASYNC_T *ctx,
                                                     VC_CONTAINER_IO_PRIVATE_CACHE_T *cache, int complete )
{
   VC_CONTAINER_PARAM_UNUSED(ctx);
   VC_CONTAINER_PARAM_UNUSED(cache);
   VC_CONTAINER_PARAM_UNUSED(complete);
   return 0;
}
