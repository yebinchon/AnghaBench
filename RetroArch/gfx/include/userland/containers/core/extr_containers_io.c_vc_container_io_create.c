
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_IO_T ;
typedef int VC_CONTAINER_IO_MODE_T ;
typedef int VC_CONTAINER_IO_CAPABILITIES_T ;


 int * vc_container_io_open_core (char const*,int ,int ,int,int *) ;

VC_CONTAINER_IO_T *vc_container_io_create( const char *uri, VC_CONTAINER_IO_MODE_T mode,
                                           VC_CONTAINER_IO_CAPABILITIES_T capabilities,
                                           VC_CONTAINER_STATUS_T *p_status )
{
   return vc_container_io_open_core( uri, mode, capabilities, 0, p_status );
}
