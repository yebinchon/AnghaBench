
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ** uint32_t ;
typedef int int32_t ;
typedef scalar_t__ VCHI_INSTANCE_T ;
typedef int VCHI_CONNECTION_T ;
typedef scalar_t__ VCHIQ_STATUS_T ;
typedef int VCHIQ_INSTANCE_T ;


 scalar_t__ VCHIQ_SUCCESS ;
 scalar_t__ vchiq_connect (int ) ;
 int vcos_unused (int ** const) ;

int32_t
vchi_connect( VCHI_CONNECTION_T **connections,
   const uint32_t num_connections,
   VCHI_INSTANCE_T instance_handle )
{
   VCHIQ_STATUS_T status;

   vcos_unused(connections);
   vcos_unused(num_connections);

   status = vchiq_connect((VCHIQ_INSTANCE_T)instance_handle);

   return (status == VCHIQ_SUCCESS) ? 0 : -1;
}
