
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_IO_T ;


 int VC_CONTAINER_PARAM_UNUSED (int *) ;
 int VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T io_null_close( VC_CONTAINER_IO_T *p_ctx )
{
   VC_CONTAINER_PARAM_UNUSED(p_ctx);
   return VC_CONTAINER_SUCCESS;
}
