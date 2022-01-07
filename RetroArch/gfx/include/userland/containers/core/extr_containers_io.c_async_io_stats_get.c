
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct VC_CONTAINER_IO_ASYNC_T {int dummy; } ;
typedef struct VC_CONTAINER_IO_ASYNC_T VC_CONTAINER_WRITE_STATS_T ;


 int VC_CONTAINER_PARAM_UNUSED (struct VC_CONTAINER_IO_ASYNC_T*) ;

__attribute__((used)) static void async_io_stats_get( struct VC_CONTAINER_IO_ASYNC_T *ctx, VC_CONTAINER_WRITE_STATS_T *stats )
{
   VC_CONTAINER_PARAM_UNUSED(ctx);
   VC_CONTAINER_PARAM_UNUSED(stats);
}
